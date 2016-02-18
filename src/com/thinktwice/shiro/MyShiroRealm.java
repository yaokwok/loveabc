package com.thinktwice.shiro;



import java.io.Serializable;




import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;




import org.apache.shiro.subject.SimplePrincipalCollection;

import com.thinktwice.common.BGDispatch;
import com.thinktwice.dao.Permission;
import com.thinktwice.dao.Role;
import com.thinktwice.dao.User;
import com.thinktwice.service.UserService;







/**
 * 
 * @author LUO
 *
 */
public class MyShiroRealm extends AuthorizingRealm {
	
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		Principal principal = (Principal) getAvailablePrincipal(principals);
		if (principal.getName() != null) {
			UserService userService = BGDispatch.userService;
			Collection<Role> myRoles = userService.getRoles(principal.getName(),principal.getPassword());
			if (myRoles != null) {
				SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
				for (Role each : myRoles) {
					info.addRole(each.getStr(Role.NAME));
					Set<String> pers = new HashSet<String>();
					for (Permission permission : each.getPermissions()) {
						if(StringUtils.isNotBlank(permission.getStr("permission"))){
						pers.add(permission.getStr("permission"));
						}
					}
					info.addStringPermissions(pers);
				}

				return info;
			}
		}
		return null;
	}

	/**
	 * 认证回调函数,登录时调用
	 */
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
		String accountName = token.getUsername();
		String password = new String(token.getPassword());

		// 用户名密码验证		if (accountName != null && !"".equals(accountName)) {
			//UserService userService = BGDispatch.userService;
			User user = User.dao.findFirst(
					" select* from user where username= ? and password=?",
					accountName,password);

			if (user != null)
				return new SimpleAuthenticationInfo(new Principal(user),
						password, accountName);

		return null;
	}
	
	
	/**
	 * 更新用户授权信息缓存.
	 */
	public void clearCachedAuthorizationInfo(String principal) {
		SimplePrincipalCollection principals = new SimplePrincipalCollection(
				principal, getName());
		clearCachedAuthorizationInfo(principals);
	}

	/**
	 * 清除所有用户授权信息缓存.
	 */
	public void clearAllCachedAuthorizationInfo() {
		Cache<Object, AuthorizationInfo> cache = getAuthorizationCache();
		if (cache != null) {
			for (Object key : cache.keys()) {
				cache.remove(key);
			}
		}
	}

	public static class Principal implements Serializable {

		private static final long serialVersionUID = 1L;
		
		private Integer id;
		private String password;
		private String name;
		

		public Principal(User user) {
			this.id = user.getInt("id");
			this.password = user.get("password");
			this.name = user.get("username");
			
		}

		public Integer getId() {
			return id;
		}

		public String getName() {
			return name;
		}
		public String getPassword() {
			return password;
		}
	

	}
}
