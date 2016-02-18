package com.thinktwice.controller;



import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.thinktwice.dao.User;


public class BasicController extends Controller {

	public static final int _maxShowPage = 5;
	public static final int _marginPage = 2;
	public static final int _defaultNumPerPage = 10;

	/**
	 * 计算分页
	 * 
	 * @param pageData
	 * @return
	 * @throws java.io.UnsupportedEncodingException
	 * 
	 */
	protected void setPage(Page pageData) {
		int pageNum = pageData.getPageNumber();
		int totalRow = pageData.getTotalRow();
		int numPerPage = pageData.getPageSize();
		int totalPage = pageData.getTotalPage();
		setAttr("totalRow", totalRow);// 总数
		setAttr("numPerPage", numPerPage);// 每页数
		setAttr("curPage", pageNum);// 当前页码
		setAttr("totalPage", totalPage);// 总页数
		setAttr("beginPage", pageNum - 4 < 1 ? 1 : pageNum - 4);// 开始页码
		setAttr("endPage", pageNum + 4 > totalPage ? totalPage : pageNum + 4);// 结束页码
	}

	/**
	 * 获取当前登录的用户
	 * 
	 * @return
	 */
	protected User getUser() {
		User user = getSessionAttr("currentUser");
		return user;
	}

	/**
	 * 记录日志
	 * 
	 * @param log
	 */
	protected void Log(String method, String log) {

	}

	/**
	 * 判断是否count 是否为0
	 * 
	 * @param tableName
	 * @param whereSql
	 * @param Object
	 *            ...parameter
	 */
	protected boolean CheckCount(String tableName, String whereSql,
			Object... parameter) {
		boolean counts = false;
		String sql = "select count(id) as count from " + tableName + " where "
				+ whereSql;
		Record count = Db.findFirst(sql, parameter);
		if (count.getLong("count") == 0) {
			counts = true;
		}
		return counts;
	}

}
