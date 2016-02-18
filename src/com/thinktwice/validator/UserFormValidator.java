package com.thinktwice.validator;

import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;


import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.thinktwice.dao.Role;
import com.thinktwice.dao.User;

public class UserFormValidator extends Validator {
		@Override
		protected void validate(Controller c) {
			validateRequiredString("user.username", "category_error", "用户名不能为空");
			int userId = 0;

			String email = c.getPara("user.email");
			String username = c.getPara("user.username");
			Integer[] is = c.getParaValuesToInt("user_role");
			int id = 0;
			if (email.length() != 0) {
				validateEmail("user.email", "text_error", "email格式不正确");
			}
			if (is == null) {
				addError("role_error", "必须选择一个角色");
			}
			if (userId == 0) {
				validateRequiredString("user.password", "text_error", "密码不能为空");
				validateEqualField("user.password", "vpassword", "text_error", "密码与确认密码不匹配");
			}

			if (username.length() != 0) {
				Record count = null;
				count = Db
						.findFirst("select count(id) as count from user where username='"
								+ username + "' and id<>" + id);
				if (count.getLong("count") != 0) {
					addError("codeRepeat_error", "已存在此用户");
				}
				;
			}
		}

		@Override
		protected void handleError(Controller c) {
			c.keepModel(User.class);
			String actionKey = getActionKey();
			if (actionKey.equals("/user/save")) { 
				c.render("add.jsp");
			} else if (actionKey.equals("/user/update"))
				c.render("edit.jsp");
			// 说明是有错误的
			String sqlRole ="select * from role";
			List<Role> roles = Role.dao.find(sqlRole);
			c.setAttr("roles",roles);
			c.getRequest().setAttribute("hasError", true);
		}
	}

