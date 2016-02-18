package com.thinktwice.service;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;


public class NewsService extends BasicService {
	//查询未读消息
	 public static Page<Record> getUnread(int pageNumber, int pageSize, int userId){
		 Page<Record> news;
				String whereSql = "";
			 whereSql=" from project p join news n on p.identifier = n.identifier where n.status = 0 and p.identifier";
		  news = Db.paginate(pageNumber, pageSize,"select p.name as projectName,n.*",whereSql);
		 return news;
	 }
	//查询已读消息
		 public static Page<Record> getRead(int pageNumber, int pageSize, int userId){
			 Page<Record> news;
					String whereSql = "";
				 whereSql=" from project p join news n on p.identifier = n.identifier where n.status = 1 and p.identifier";
			  news = Db.paginate(pageNumber, pageSize,"select p.name as projectName,n.*",whereSql);
			 return news;
		 }
		 //查看消息
		 public static Record getNews(int id){
			//修改消息状态为已读
			Db.update("update news set status=1 where id="+id);
			Record news = Db.findFirst("select p.name as projectName,n.* from project p join news n on p.identifier = n.identifier where n.id="+id);
			return news;
		 }
		 //获取未读消息条数
		 public static Long getCount(String user){
			 Long count;
					String whereSql = "";
				 whereSql=" from news n where n.status = 0 and n.rpId='"+user+"'";
			  count = Db.queryLong("select count(id)"+whereSql);
			 return count;
		 }
		 //删除消息
		 public static boolean deleteNews(int id){
			 return(Db.deleteById("news", id));
		 }
}
