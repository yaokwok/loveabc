package com.thinktwice.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;


import com.jfinal.plugin.activerecord.DbKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.TableInfoMapping;
import com.jfinal.plugin.activerecord.cache.ICache;

public abstract class Model<M extends Model> extends
		com.jfinal.plugin.activerecord.Model<M> {
	// private String tableName =
	// TableInfoMapping.me().getTableInfo(getClass()).getTableName();;

	/*
	 * private void checkTableName() { if (StringKit.isBlank(tableName)) throw
	 * new IllegalArgumentException(
	 * "tableName can not be blank,please setTableName(tableName)"); }
	 */
	public M searchFirst(String key, Object value) {
		List<M> mList = search(key, value, "");
		return mList != null && mList.size() > 0 ? mList.get(0) : null;
	}

	public List<M> search(String key, Object value) {
		return search(key, value, "");
	}

	public List<M> search(String key, Object value, String orderBy) {
		// checkTableName();
		String tableName = TableInfoMapping.me().getTableInfo(getClass())
				.getTableName();
		;
		String sql = "select * from " + tableName + " where " + key + "=? "
				+ orderBy;
		return find(sql, value);
	}

	public M searchFirst(Map<String, Object> maps) {
		List<M> mList = search(maps, "");
		return mList != null && mList.size() > 0 ? mList.get(0) : null;
	}

	public List<M> search(Map<String, Object> maps) {
		return search(maps, "");
	}

	public List<M> search(Map<String, Object> maps, String orderBy) {
		// checkTableName();
		StringBuilder sb = new StringBuilder();
		String tableName = TableInfoMapping.me().getTableInfo(getClass())
				.getTableName();
		;

		sb.append("select * from ").append(tableName).append(" where 1=1 ");
		List<Object> values = new ArrayList<Object>();
		for (Entry<String, Object> entry : maps.entrySet()) {
			if (entry.getValue() != null) {
				sb.append(" and ").append(entry.getKey()).append("=?");
				values.add(entry.getValue());
			}
		}
		sb.append(" ").append(orderBy);
		return find(sb.toString(), values.toArray());
	}

	public List<M> searchByCache(String cacheName, Object key,
			Map<String, Object> maps) {
		return this.searchByCache(cacheName, key, maps, "");
	}

	public List<M> searchByCache(String cacheName, Object key,
			Map<String, Object> maps, String orderBy) {
		// checkTableName();
		ICache cache = DbKit.getCache();
		List<M> result = cache.get(cacheName, key);
		if (result == null) {
			result = search(maps);
			cache.put(cacheName, key, result);
		}
		return result;
	}

	public Page<M> searchPaginate(int pageNumber, int pageSize,
			Map<String, Object> maps) {
		return this.searchPaginate(pageNumber, pageSize, maps, "");
	}

	public Page<M> searchPaginate(int pageNumber, int pageSize,
			Map<String, Object> maps, String orderBy) {
		StringBuilder sb = new StringBuilder();
		String tableName = TableInfoMapping.me().getTableInfo(getClass())
				.getTableName();

		sb.append("from ").append(tableName).append(" where 1=1");
		List<Object> values = setMap(maps, sb);
		
		sb.append( orderBy);
		Object[] obj = values.toArray();
		return paginate(pageNumber, pageSize, "select *", sb.toString(),obj);

	
	}


	
	private List<Object> setMap(Map<String, Object> maps, StringBuilder sb) {
		List<Object> values = new ArrayList<Object>();
		for (Entry<String, Object> entry : maps.entrySet()) {
		
			if(entry.getKey().contains("or")){
				sb.append(entry.getKey());
			}else{
				sb.append(" and ").append(entry.getKey());
			}
		
			if(entry.getKey().contains("in")){
				String[] number = entry.getValue().toString().split(",");
				for(int i=0;i<number.length;i++){
					values.add(number[i]);
				}
			}else{
			values.add(entry.getValue());
			}
		}
		return values;
	}
	
	public Page<M> searchPaginate(int pageNum, int numPerPage,StringBuilder sql,List params,
			String sortFitter) {
		Object[] obj = params.toArray();
		return paginate(pageNum, numPerPage, "select *", sql.toString()+ sortFitter,
				obj);
	}
	

	public Page<M> searchPaginateByCache(String cacheName, Object key,
			int pageNumber, int pageSize, Map<String, Object> maps) {
		return this.searchPaginateByCache(cacheName, key, pageNumber, pageSize,
				maps, "");
	}

	public Page<M> searchPaginateByCache(String cacheName, Object key,
			int pageNumber, int pageSize, Map<String, Object> maps,
			String orderBy) {
		// checkTableName();
		ICache cache = DbKit.getCache();
		Page<M> result = cache.get(cacheName, key);
		if (result == null) {
			result = searchPaginate(pageNumber, pageSize, maps, orderBy);
			cache.put(cacheName, key, result);
		}
		return result;
	}
}
