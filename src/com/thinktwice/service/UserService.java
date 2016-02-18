package com.thinktwice.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;






import com.jfinal.plugin.activerecord.Page;
import com.thinktwice.dao.Permission;
import com.thinktwice.dao.Role;
import com.thinktwice.dao.User;


public class UserService extends BasicService{

	public static final String TableName =  "user";
	
	public User querys(String name,String password){
		String sql ="select* from "+TableName+" where   username='"+name+"'  and password='"+password+"'";
	    User user= User.dao.findFirst(sql);
		return user;	
	}
	
	public Collection<Role> getRoles(String username, String password) {
		User user = User.dao.findFirst( "select * from user where username=? and password=?", username, password);
		List<Role> roles = user.getRoles();
		return roles;
	}
	//��ѯ����Ȩ��
	public static List<Permission> getPerole(){
		List<Permission> perole = Permission.dao.find("select * from permission");
		return perole;
	}
	//��ѯ�����û�
	public static List<User> getAllUser() {
		List<User> user = User.dao.find("select * from user");
		return user;
	}
	public Page<User> query_sort(int pageNum, int numPerPage,User currentUser) {		
		Page<User> userPage;
		try{
			//������ݿ�Fitter
			String sqlFitter = getSqlFitter();
				List<Object> sqlParam = new ArrayList<Object>();						 
				userPage = User.dao.paginate(pageNum, numPerPage, "SELECT *","FROM " + TableName + sqlFitter,sqlParam.toArray());
				return userPage;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	//�鿴���û�ȫ����Ϣ
	public static User getUserAllInfo(int id) {
		User user = User.dao.findFirst("select u.*,r.name,un.name as unitName from user u left join unit un on un.id=u.unitId left join user_role ur on ur.userId=u.id left join role r on ur.roleId=r.id where u.id=?",id);
		return user;
	}
}
