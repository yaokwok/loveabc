package com.thinktwice.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;

import com.jfinal.ext.route.ControllerBind;
import com.thinktwice.dao.User;
import com.thinktwice.shiro.MyShiroRealm.Principal;

@ControllerBind(controllerKey = "/", viewPath = "/login")
public class IndexController extends BasicController {

	public void index() {
		User user = getSessionAttr("currentUser");
		if (user == null) {
			render("login.jsp");
		} else {
			this.setAttr("page", 1);
			redirect("/home");
		}
	}

	public void login() {
		String msg = "success";
		String username = getPara("useranme");
		String password = getPara("password");
		password = new Md5Hash(password).toHex();
		AuthenticationToken token = new UsernamePasswordToken(username, password);
		Subject currentUser = SecurityUtils.getSubject();
		User user = null;
		try {
			currentUser.login(token);
			Principal principal = (Principal) currentUser.getPrincipal();
			user = User.dao.findById(principal.getId());
			setSessionAttr("currentUser", user);
		} catch (UnknownAccountException uae) {

			msg = "您输入用户不存在或密码错误";

		} catch (IncorrectCredentialsException ice) {

			msg = "您输入用户不存在或密码错误";
		} catch (LockedAccountException lae) {

			msg = "您输入用户不存在或密码错误";
		} catch (AuthenticationException ae) {

			msg = "您输入用户不存在或密码错误.";
		}

		if (user != null) {
			/*	switch (user.getInt("role")) {
				case 0:
					redirect("/");
					break;
				default:
					render("user/index.jsp");
					break;
				}*/
			redirect("/home");
		} else {
			setAttr("msg", "您输入用户不存在或密码错误");
			render("login.jsp");
		}
	}

	public void logout() {
		Subject currentUser = SecurityUtils.getSubject();
		currentUser.logout();

		redirect("/");
	}
}
