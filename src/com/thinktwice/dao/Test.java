package com.thinktwice.dao;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

/**
 *试卷mode 
 */
@SuppressWarnings("serial")
public class Test extends Model<Test> {
	public static final Test dao = new Test();

	public Page<Test> pageQuery(int pagenum, int pagesize, String type) {
		String where = "";
		if (!type.equals("all")) {
			where = "where difficulty=" + type;
		}
		return paginate(pagenum, pagesize, "select *", " from test " + where +" order by id desc");
	}

	/**
	 * 根据试卷难度获取所有试卷总数
	 */
	public static Long findCountByDiff(String Diff) {
		return Db.queryLong("select count(id) from test where difficulty=?", Diff);
	}
	
	/**
	 * 分别统计各个类型的试卷总数返回ExamBean
	 */
	public static Test findExamCountByType(int id){
		return Test.dao.findFirst("select count(t.id)as allexam,sum(case when t.difficulty = 0 then 1 else 0 end)as low,sum(case when t.difficulty = 1 then 1 else 0 end)as middle,sum(case when t.difficulty = 2 then 1 else 0 end)as height,(select count(id) from reply where userId =?)as myCount from test t ",id);
	}
}
