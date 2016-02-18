package com.thinktwice.controller;



import com.jfinal.ext.route.ControllerBind;

@ControllerBind(controllerKey="/home",viewPath="/home")
public class HomeController extends BasicController{
	/**
	 * 爱英语主页
	 */
	public void index(){
		setAttr("page",0);
		render("homePage.jsp");
	}


}
