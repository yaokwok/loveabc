package com.thinktwice.controller;

import com.jfinal.ext.route.ControllerBind;

@ControllerBind(controllerKey = "/know", viewPath = "/know")
public class KnowController extends BasicController {

	/**
	 * 知道列表
	 */
	public void index() {
		/*int pageNum = Convert.toInteger(getPara("pageNumber", "1"));
		int pageSize = Convert.toInteger(getPara("pageSize", String.valueOf(10)));
		String type = getPara(0);
		Page<Test> t = Test.dao.pageQuery(pageNum, pageSize, type);*/
		setAttr("page", 4);
		/*setAttr("leftPage", type);
		setAttr("examPage", t);
		if (t != null) {
			setPage(t);
			setAttr("pageUrl", "/exam/" + type);
		}
		Test test = Test.findExamCountByType(getUser().getInt("id"));
		ExamBean bean = new ExamBean();
		bean.setAll(test.get("allexam").toString());
		bean.setLow(test.get("low").toString());
		bean.setMiddle(test.get("middle").toString());
		bean.setHeight(test.get("height").toString());
		bean.setMyTest(test.get("myCount").toString());
		setAttr("examCount", bean);*/
		render("index.jsp");
	}

}
