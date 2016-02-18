package com.thinktwice.service;

import java.util.Map;

import jodd.util.StringUtil;

import com.jfinal.plugin.activerecord.Db;

public class BasicService {

	/**
	 * ��ȡ�������
	 * 
	 * @return
	 */
	protected long query_count(String tableName, String filter,
			Object... searchKey) {
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("select count(id) from ").append(tableName);
		if (StringUtil.isNotBlank(filter)) {
			sqlBuffer.append(" where ").append(filter);
			return Db.queryLong(sqlBuffer.toString(), searchKey);
		}
		return Db.queryLong(sqlBuffer.toString());
	}

	public boolean checkOnly(String tableName, String key, Object...value) {
		String fitter = key + "=?";
		return query_count(tableName, fitter, value) < 1;
	}
	
	

	protected String getSqlFitter() {
		return " WHERE 1=1 ";
	}
	
	protected StringBuilder getSql(String tableName){
		StringBuilder sb = new StringBuilder();
		sb.append("from ").append(tableName).append(" where 1=1");
		return sb;
	}
	
	/**
	 * sql in 
	 * @param con
	 * @param key
	 * @param str
	 */
	public void conIn(Map<String,Object> con,String key,String str){
		String[] number = str.split(",");
		String paramnumber = "";
		for(int i=0;i<number.length;i++){
			paramnumber +="?,";
		}
		paramnumber = paramnumber.substring(0, paramnumber.length()-1);
		con.put(key+" in ("+paramnumber+")", str);
	}
	/**
	 * sql like
	 * @param con
	 * @param key
	 * @param str
	 */
	public void conLike(Map<String,Object> con,String key,String str){
		con.put(key+" like (?)", str);
	}
	
	/**
	 * sql  or
	 * if need () decide by u
	 * @param con
	 * @param str
	 */
	public void conOr(Map<String,Object> con,String str){
		con.put(" or ?", str);
	}
	
	/**
	 * sql equal
	 * @param con
	 * @param key
	 * @param str
	 */
	public void conEqual(Map<String,Object> con,String key,String str){
		con.put(key+" =?", str);
	}
	
	
	/**
	 * sql equal
	 * @param con
	 * @param key
	 * @param str
	 */
	public void conBigger(Map<String,Object> con,String key,String str){
		con.put(key+" > ?", str);
	}
	
	/**
	 * sql equal
	 * @param con
	 * @param key
	 * @param str
	 */
	public void conIs(Map<String,Object> con,String key,String str){
		con.put(key+" is ?", str);
	}
}