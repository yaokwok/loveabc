package com.thinktwice.dao;

import java.util.List;


@SuppressWarnings("serial")
public class Role extends Model<Role> {
	
   public static final  Role dao = new Role();
   public static final String ID = "id";
   public static final String NAME = "name";
   
	public List<Permission> getPermissions() {
		return Permission.dao.find("select * from permission where id in(select permissionId from permission_role  where roleId=?)", get("id"));
	}
}
