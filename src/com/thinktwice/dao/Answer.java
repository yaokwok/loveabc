package com.thinktwice.dao;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

@SuppressWarnings("serial")
public class Answer extends Model<Answer> {
	public static final Answer dao = new Answer();
	
	public static Answer findRightByQuestionsId(String id){
		return Answer.dao.findFirst("select * from answer where is_right = 1 and questionsId=?",id);
	}
}
