package com.thinktwice.dao;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

@SuppressWarnings("serial")
public class Reply extends Model<Reply> {
	public static final Reply dao = new Reply();
	
	/**
	 * 根据用户Id查找做过的试卷
	 */
	public Page<Reply> findTestByUser(int pageNum,int pageSize,int userId){
		return paginate(pageNum,pageSize,"select r.id as replyId,r.endTime,r.score,t.*"," from reply r left join test t on r.testId = t.id where userId = ? order by r.endTime desc",userId);
	}
}
