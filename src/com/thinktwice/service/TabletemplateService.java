package com.thinktwice.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;


public class TabletemplateService  extends BasicService{

	public Page<Record> query_slice( int tabletype,int pageNum, int numPerPage) {
		Page<Record> recpage;
		List<Object> sqlParam = new ArrayList<Object>();
		String sql = null;

			switch(tabletype){
			case 1:{
				sql=" from score  m1  JOIN  (SELECT m2.id,m2.version,count(DISTINCT version) from score m2 GROUP BY m2.version) as m2 on m1.id=m2.id  join (SELECT m3.id,m3.version,count(DISTINCT version) from score m3 GROUP BY m3.version) as m3 ON m1.id=m3.id  " ;
			      break;
			}
			case 2:{
				sql="";
				  break;
			} 
			case 3:{
				sql="";
				  break;
			} 
			case 4:{
				sql="";
				  break;
			} 
			}
			recpage  = Db.paginate(pageNum, numPerPage,"SELECT m1.projectType,m1.version  ", sql,sqlParam.toArray());
		return recpage;
	}
	
	
	
	

}
