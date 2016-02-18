package com.thinktwice.dao;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;

public class Questions extends Model<Questions> {
	private static final long serialVersionUID = 1L;
	public static final Questions dao = new Questions();
	
	/**
	 * 根据难度获取试题id
	 */
	public static List<Questions> findByDiff(String diff){
		return  Questions.dao.find("select id from questions where difficulty=? and testId=0",diff);
	}
	
	/**
	 * 根据试卷ID获取试题集合
	 */
	public static List<Questions> findByTestId(String id){
		return Questions.dao.find("select * from questions where testId=?",id);
	}
	
	/**
	 * 根据试卷ID获取试题列表以及用户答案
	 */
	public static List<Questions> findQuesAndUserAnswerByReplyId(String id){
		return Questions.dao.find("select * from result r left join questions q on r.questionsId = q.id where r.replayId =?",id);
	}
	
	/**
	 * 获取当前题选项
	 * */
	public List<Answer> getAnswers(){
		String sql = "select* from answer where questionsId=?  order by  identifier asc";
		return Answer.dao.find(sql,get("id"));
	}
	
	/**
	 * 获取试题的标准选项
	 */
	public String getRirhtIdentifier(){
		Answer a = Answer.dao.findFirst("select identifier from answer where questionsId=? and is_right = '1'",get("id"));
		return a.getStr("identifier");
	}
}
