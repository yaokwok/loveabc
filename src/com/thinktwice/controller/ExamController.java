package com.thinktwice.controller;

import java.util.Date;
import java.util.List;

import jodd.typeconverter.Convert;

import com.jfinal.ext.route.ControllerBind;
import com.jfinal.plugin.activerecord.Page;
import com.thinktwice.dao.Answer;
import com.thinktwice.dao.Questions;
import com.thinktwice.dao.Reply;
import com.thinktwice.dao.Result;
import com.thinktwice.dao.Test;
import com.thinktwice.utils.ExamBean;

@ControllerBind(controllerKey = "/exam", viewPath = "/exam")
public class ExamController extends BasicController {
	
	 private String[] text = {"别找我，我想静静.也别问我静静是谁...","暂时的失利，比暂时的胜利好得多。","即使跌倒一百次,也要一百次地站起来。","阿门，真是天助我也,再接再厉。","咳咳,革命尚未成功,同志还需努力。","今日得遂凌云志，青云路上九霄冲。"};
	/**
	 * 试题列表
	 */
	public void index() {
		int pageNum = Convert.toInteger(getPara("pageNumber", "1"));
		int pageSize = Convert.toInteger(getPara("pageSize", String.valueOf(10)));
		String type = getPara(0);
		Page<Test> t = Test.dao.pageQuery(pageNum, pageSize, type);
		setAttr("page", 3);
		setAttr("leftPage", type);
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
		setAttr("examCount",bean);
		render("index.jsp");
	}

	public void queryByType() {

	}

	/**
	 * 贡献试题
	 */
	public void shareExam() {
		setAttr("page", 3);
		render("shareExam.jsp");
	}

	/**
	 * 提交试题
	 */
	public void addExam() {
		try {
			int userId = getUser().getInt("id");
			Questions q = getModel(Questions.class);
			q.set("userId", userId);
			q.set("createDate", new Date());
			q.save();
			String[] answer = getParaValues("answer");
			String isRight = getPara("isRight");
			String identifier[] = { "a", "b", "c", "d" };
			for (int i = 0; i < answer.length; i++) {
				Answer a = new Answer();
				a.set("content", answer[i]);
				a.set("questionsId", q.getInt("id"));
				a.set("identifier", identifier[i]);
				if (isRight.equals(identifier[i])) {
					a.set("is_right", 1);
				}
				a.save();
			}
			//创建试卷
			creatExam();
		} catch (Exception e) {

		}
		setAttr("page", 3);
		render("addSuccess.jsp");
	}
	
	/**
	 * 创建试卷
	 */
	public void creatExam() {
		//各个阶段题目剩余超过5道则自动创建试卷
		String[] type = { "0", "1", "2" };
		String[] name = { "入门", "中级", "高阶" };
		for (int i = 0; i < type.length; i++) {
			List<Questions> q = Questions.findByDiff(type[i]);
			if (q.size() >= 5) {
				Long testCount = Test.findCountByDiff(type[i]);
				//创建试卷
				Test t = new Test();
				t.set("time", new Date());
				t.set("difficulty", type[i]);
				t.set("title", "2015英语" + name[i] + "第" + (testCount + 1) + "套模拟测验练习题");
				t.save();
				int id = t.getInt("id");
				//设置试卷与题目对应关系
				for (int j = 0; j < 5; j++) {
					Questions qs = Questions.dao.findById(q.get(j).getInt("id"));
					qs.set("testId", id);
					qs.update();
				}
			}
		}
	}
	
	/**
	 * 开始答题
	 */
	 public void beginExam(){
		 String id = getPara(0);
		 Test t = Test.dao.findById(id);
		 List<Questions> q = Questions.findByTestId(id);
		 setAttr("page",3);
		 setAttr("nowTime",new Date());
		 setAttr("test",t);
		 setAttr("questions",q);
	 }
	 /**
	  * 答题超时
	  */
	 public void examTimeout(){
		 setAttr("username",getUser().getStr("english_name"));
		 renderJsp("examTimeout.jsp");
	 }
	 /**
	  * 提交试卷
	  */
	 public void submitExam(){
		 String testId = getPara("testId");
		 String[] questionsIds = getParaValues("questionsIds");
		 int userId = getUser().getInt("id");
		 Reply r = new Reply();
		 r.set("userId", userId);
		 r.set("testId", testId);
		 r.set("endTime", new Date());
		 r.save();
		 int rightCount = 0;
		 for(int i=0;i<questionsIds.length;i++){
			 String identifier = getPara("answer"+questionsIds[i]);
			 Result rl = new Result();
			 rl.set("identifier", identifier);
			 rl.set("replayId",r.getInt("id"));
			 rl.set("questionsId",questionsIds[i]);
			 rl.save();
			 //计算做对题数
			 Answer a = Answer.findRightByQuestionsId(questionsIds[i]);
			 if(identifier.equals(a.get("identifier"))){
				 rightCount+=1;
			 }
		 }
		 r.set("score", 20*rightCount);
		 r.update();
		 setAttr("page",3);
		 setAttr("replyId",r.getInt("id"));
		 setAttr("testId",testId);
		 setAttr("text",text[rightCount]);
		 setAttr("score",20*rightCount);
		 renderJsp("examFinish.jsp");
	 }
	 
	 /**
	  * 查看试卷
	  */
	 public void showTest(){
		 String replyId = getPara(0);
		 Reply r = Reply.dao.findById(replyId);
		 Test t = Test.dao.findById(r.getInt("testId"));
		 List<Questions> q = Questions.findQuesAndUserAnswerByReplyId(replyId);
		 setAttr("page",3);
		 setAttr("test",t);
		 setAttr("reply",r);
		 setAttr("questions",q);
	 }
	 /**
	  * 我做过的试卷列表
	  */
	 public void myTests(){
		 int pageNum = Convert.toInteger(getPara("pageNumber", "1"));
		 int pageSize = Convert.toInteger(getPara("pageSize", String.valueOf(10)));
		 Page<Reply> r = Reply.dao.findTestByUser(pageNum,pageSize,getUser().getInt("id"));
		 setAttr("page",3);
		 setAttr("leftPage", 6);
			setAttr("testPage", r);
			if (r != null) {
				setPage(r);
				setAttr("pageUrl", "/exam/myTests");
			}
			Test test = Test.findExamCountByType(getUser().getInt("id"));
			ExamBean bean = new ExamBean();
			bean.setAll(test.get("allexam").toString());
			bean.setLow(test.get("low").toString());
			bean.setMiddle(test.get("middle").toString());
			bean.setHeight(test.get("height").toString());
			bean.setMyTest(test.get("myCount").toString());
			setAttr("examCount",bean);
	 }
}
