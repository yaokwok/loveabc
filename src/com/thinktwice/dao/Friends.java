package com.thinktwice.dao;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

/**
 * 好友
 */
@SuppressWarnings("serial")
public class Friends extends Model<Friends> {
	private static final long serialVersionUID = 1L;
	public static final Friends dao = new Friends();
	
//	public Page<friends> paginate(int pageNumber, int pageSize) {
//		return paginate(pageNumber, pageSize, "select *"," from user,blog where blog.userId = user.id order by blog.id asc ");
//	}
}
