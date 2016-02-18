package com.thinktwice.dao;

import java.util.List;

import com.thinktwice.dao.User;


public class User extends Model<User>{

	private static final long serialVersionUID = 1L;
	public static final User dao = new User();
	public static final String ID = "id";
	public static final String USERNAME = "username";// 用户名称
	public User getByUsernameAndPassword(String username, String password) {		
        return dao.findFirst("select * from user where username=? and password=?", username, password);
	}
	
	//获取用户对应的角色
	public List<Role> getRoles() {
		return Role.dao.find("select * from role where id in(select roleId from user_role where userId=?)",get("id"));
	}
	
	/*
	 * 是否是超级管理员
	 */
	public boolean isSuperAdmin() {
		boolean flag = false;
		for(Role role : getRoles()) {
			if(role.get("name").equals("超级管理员")){
			flag = true;
			break;
			}
		}
		return flag;
	}
	/*
	 * 是否是管理员
	 */
	public boolean isAdmin() {
		boolean flag = false;
		for(Role role : getRoles()) {
			if(role.get("name").equals("管理员")){
			flag = true;
			break;
			}
		}
		return flag;
	}
	/*
	 * 是否是小组组长
	 */
	public boolean isGroupLeader() {
		boolean flag = false;
		for(Role role : getRoles()) {
			if(role.get("name").equals("组长")){
			flag = true;
			break;
			}
		}
		return flag;
	}
	/*
	 * 是否是普通用户
	 */
	public boolean isConsumer() {
		boolean flag = false;
		for(Role role : getRoles()) {
			if(role.get("name").equals("普通用户")){
			flag = true;
			break;
			}
		}
		return flag;
	}
	//登录积分+10  
	public Double loginPoint(int id){
		User user = User.dao.findFirst("select * from user where id=?", id);
		return user.getDouble("point")+10;
	}
	//发布有效帖子积分+5
	public Double newBlogPoint(int id){
		User user = User.dao.findFirst("select * from user where id=?", id);
		return user.getDouble("point")+5;
	}
	//回复帖子积分+1
	public Double replyPoint(int id){
		User user = User.dao.findFirst("select * from user where id=?", id);
		return user.getDouble("point")+1;
	}
	//等级计算
	public String levelUp(int id){
		User user = User.dao.findFirst("select * from user where id=?", id);
		Double point = user.getDouble("point");
		if(0<=point&&point<151){
			user.set("level","幼儿园");
			user.update();
		}else if(150<point&&point<551){
			user.set("level","小学生");
			user.update();
		}else if(550<point&&point<2301){
			user.set("level","初中生");
			user.update();
		}else if(2300<point&&point<5801){
			user.set("level","高中生");
			user.update();
		}else if(5800<point&&point<18501){
			user.set("level","大学生");
			user.update();
		}else if(18500<point&&point<68001){
			user.set("level","光荣学士");
			user.update();
		}else if(68000<point&&point<166001){
			user.set("level","荣耀硕士");
			user.update();
		}else if(166000<point&&point<500001){
			user.set("level","尊荣博士");
			user.update();
		}else if(500000<point){
			user.set("level","自尊博士后");
			user.update();
		}
		return user.get("level");
	}
}

