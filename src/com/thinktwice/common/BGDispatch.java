package com.thinktwice.common;

import com.thinktwice.service.TabletemplateService;
import com.thinktwice.service.UserService;

public class BGDispatch {

	public static UserService userService;
	public static TabletemplateService tabletemplateService;
	static{
		userService = new UserService();
		tabletemplateService = new TabletemplateService();
	}
}
