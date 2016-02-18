package com.thinktwice.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import jodd.typeconverter.Convert;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;

import com.jfinal.ext.route.ControllerBind;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.upload.UploadFile;
import com.thinktwice.common.BGDispatch;
import com.thinktwice.dao.User;
import com.thinktwice.service.UserService;
import com.thinktwice.shiro.MyShiroRealm.Principal;
import com.thinktwice.utils.DateUtils;
import com.thinktwice.utils.OperateImage;
import com.thinktwice.utils.ReadPropertity;
import com.thinktwice.utils.StringUtils;

@ControllerBind(controllerKey = "/user")
public class UserController extends BasicController {
	/*
	 * 用户列表
	 */
	@RequiresRoles(value = { "管理员", "超级管理员" }, logical = Logical.OR)
	public void index() {
		int pageNum = Convert.toInteger(getPara("pageNumber", "1"));
		int pageSize = Convert.toInteger(getPara("pageSize", String.valueOf(_defaultNumPerPage)));

		Page<User> UserPage = BGDispatch.userService.query_sort(pageNum, pageSize, getUser());
		if (UserPage != null) {
			setPage(UserPage);
			setAttr("UserPage", UserPage);
			setAttr("pageUrl", "/user");
		}

		this.setAttr("page", 3);
		render("userList.jsp");
	}

	/**
	 * 判断用户名是否唯一
	 */
	public void checkUsername() {
		String username = getPara("username");
		User user = getModel(User.class);
		int id = 0;
		if (user.get("id") != null) {
			id = user.get("id");
		}
		boolean count = CheckCount("user", "username=? and id<>?", username, id);
		if (!count) {
			renderJson(false);
		} else {
			renderJson(true);
		}
		;
	}
	
	/**
	 * 判断英文名是否唯一
	 */
	public void checkEngName(){
		String englishName = getPara("english_name");
		User user = getModel(User.class);
		int id = 0;
		if (user.get("id") != null) {
			id = user.get("id");
		}
		boolean count = CheckCount("user", "english_name=? and id<>?", englishName, id);
		if (!count) {
			renderJson(false);
		} else {
			renderJson(true);
		}
		;
	}

	/**
	 * Regist User.
	 */
	public void registUser() {
		renderJsp("registUser.jsp");
	}

	/**
	 * 新增用户（注册页面提交）
	 */
	public void newUser() {
		try {
			String username = getPara("username");
			String password = getPara("password");
			String english_name = getPara("english_name");
			User user = getModel(User.class);
			password = new Md5Hash(password).toHex();
			user.set("time", new Date());
			// 新用户默认等级-初来咋到
			user.set("level", "小学生");
			// 默认积分=0
			user.set("point", 0);
			user.set("username", username);
			user.set("english_name", english_name);
			user.set("password", password);
			user.save();
			AuthenticationToken token = new UsernamePasswordToken(username, password);
			Subject currentUser = SecurityUtils.getSubject();
			User user2 = null;
			currentUser.login(token);
			Principal principal = (Principal) currentUser.getPrincipal();
			user2 = User.dao.findById(principal.getId());
			setSessionAttr("currentUser", user2);
			setAttr("user", user);
		} catch (Exception e) {
			//失败跳到注册页面重新注册
			redirect("/user/newUser");
		}

		//成功跳到我的资料页面
		redirect("/home");
	}

	/**
	 * 个人中心--个人主页
	 */
	public void myHomePage() {
		User user = User.dao.findById(getUser().getInt("id"));
		setAttr("user", user);
		render("myZone/myHomePage.jsp");
	}

	/*
	 * 完善用户信息
	 */
	public void edit() {
		int id = getUser().getInt("id");
		User user = User.dao.findById(id);
		setAttr("user", user);
		setAttr("page", 6);
		render("myZone/editUser.jsp");
	}

	/*
	 * 更新数据
	 */
	public void update() {
		User user = getModel(User.class);
		user.update();
		redirect("/user/myHomePage");
	}

	/*** 到图片上传页面 */
	public void image() {
		render("common/image.jsp");
	}

	/*** 上传图片 */
	@SuppressWarnings("deprecation")
	public void upload() {
		String fileTime = DateUtils.getNowTime(DateUtils.DATE_KEY_STR);
		String filePath = this.getRequest().getRealPath(ReadPropertity.getProperty("actorpictmp"));
		UploadFile uploadFile = this.getFile("imgFile", filePath);
		String fileName = uploadFile.getFileName();
		File sFile = new File(this.getRequest().getRealPath(ReadPropertity.getProperty("actorpictmp") + fileName));
		String newFileName = fileTime + "." + StringUtils.getExtensionName(fileName);
		File dFile = new File(this.getRequest().getRealPath(ReadPropertity.getProperty("actorpictmp") + newFileName));
		sFile.renameTo(dFile);
		setAttr("fileName", newFileName);
		render("common/cut.jsp");
	}

	/*** 剪切图片 */
	@SuppressWarnings("deprecation")
	public void cut() {
		int x = getParaToInt("x");
		int y = getParaToInt("y");
		int width = getParaToInt("width");
		int height = getParaToInt("height");
		String fileName = getPara("fileName");
		String filePath = this.getRequest().getRealPath(ReadPropertity.getProperty("actorpictmp") + fileName);
		try {
			OperateImage o = new OperateImage(x, y, width, height);
			o.setSrcpath(filePath);
			String newFilePath = this.getRequest().getRealPath(ReadPropertity.getProperty("actorpic") + fileName);
			o.setSubpath(newFilePath);
			o.cut();
			File f = new File(filePath);
			f.delete();
			setAttr("fileName", fileName);
		} catch (IOException e) {
			e.printStackTrace();
		}
		render("common/image.jsp");
	}

	/*
	 * 删除用户
	 */
	@RequiresRoles(value = { "ROLE_ADMIN", "ROLE_SUPERADMIN" }, logical = Logical.OR)
	public void delete() {
		User.dao.deleteById(getParaToInt());
		redirect("/user");
	}

	/*
	 * 查看用户信息
	 */
	public void toView() {
		int id = getParaToInt();
		User user = UserService.getUserAllInfo(id);
		this.setAttr("user", user);
		this.setAttr("page", 3);
		render("toView.jsp");
	}

	/**
	 * 修改密码
	 * */
	public void editpwd() {
		User user = User.dao.findById(getParaToInt());
		setAttr("user", user);
		setAttr("page", 10);
		render("editpwd.jsp");
	}

	/**
	 * 更新密码 需判断
	 */
	public void updatepwd() {
		User user = User.dao.findById(getParaToInt("user.id"));
		User currentUser = getUser();
		String pwd = user.get("password");
		String rawpwd = getPara("rawpassword");
		rawpwd = new Md5Hash(rawpwd).toHex();
		if (rawpwd.equals(pwd)) {
			if (pwd == null) {
				setAttr("user", user);
				setAttr("page", 10);
				setAttr("fail", "新密码不能为空");
				render("editpwd.jsp");
			} else {
				String newpwd = new Md5Hash(getPara("user.password")).toHex();
				/*if (currentUser.isSuperAdmin() || currentUser.isAdmin()
						&& currentUser.getInt("id") != user.getInt("id")) {
					user.set("password", newpwd).update();
					redirect("/user");
				} else*/if ((currentUser.getInt("id").equals(user.getInt("id")))) {
					setAttr("success", "操作成功.请牢记密码！");
					setAttr("user", user);
					setAttr("page", 10);
					user.set("password", newpwd).update();
					render("editpwd.jsp");
				} else {
					renderError(404);
				}
			}
		} else {
			setAttr("user", user);
			setAttr("page", 10);
			setAttr("fail", "原始密码不正确，请重新输入");
			render("editpwd.jsp");
		}
	}
}
