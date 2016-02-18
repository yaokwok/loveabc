package com.thinktwice.common;

import java.util.Properties;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.ext.plugin.shiro.ShiroPlugin;
import com.jfinal.ext.plugin.tablebind.AutoTableBindPlugin;
import com.jfinal.ext.route.AutoBindRoutes;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.ehcache.EhCachePlugin;
import com.jfinal.render.JspRender;
import com.jfinal.render.ViewType;
import com.thinktwice.dao.Model;
import com.thinktwice.utils.MZDruidUtils;

/**
 * API引导式配置
 */
/**
 * @author Administrator
 *
 */
/**
 * @author Administrator
 *
 */
public class MgConfig extends JFinalConfig {
	Properties druidConfig;
	/**
	 * 供Shiro插件使用。
	 */
	Routes routes;

	/**
	 * 配置常量
	 */
	@Override
	public void configConstant(Constants me) {
		druidConfig = loadPropertyFile("config/bruid.properties");
		// 加载少量必要配置，随后可用getProperty(...)获取值
		me.setDevMode(getPropertyToBoolean("devMode", false));
		me.setViewType(ViewType.JSP); // 设置视图类型为Jsp，否则默认为FreeMarker
		me.setEncoding("UTF-8");
		me.setBaseViewPath("/WEB-INF/pages");
		me.setError404View("/404.jsp");
		me.setError403View("/500.jsp");
		me.setError500View("/500.jsp");
		me.setError401View("/500.jsp");

		JspRender.setSupportActiveRecord(false);
	}

	/**
	 * 配置路由
	 */
	@Override
	public void configRoute(Routes me) {
		this.routes = me;
		me.add(new AutoBindRoutes()); //自动绑定路由
	}

	/**
	 * 配置插件
	 */
	@Override
	public void configPlugin(Plugins me) {
		DruidPlugin druidPlugin = MZDruidUtils.getDruidPlugin(druidConfig);
		me.add(druidPlugin);

		AutoTableBindPlugin arp = new AutoTableBindPlugin(druidPlugin);
		arp.addExcludeClass(Model.class);
		arp.setShowSql(true);
		me.add(arp);
		me.add(new EhCachePlugin());

		me.add(new ShiroPlugin(routes));

	}

	/**
	 * 配置全局拦截器
	 */
	@Override
	public void configInterceptor(Interceptors me) {
		//me.add(new TalkInterceptor());
	}

	/** 
	 * 启动时候调用
	 */
	@Override
	public void afterJFinalStart() {

	}

	/**
	 * 配置处理器
	 */
	@Override
	public void configHandler(Handlers me) {
	}

	/**
	 * 运行此 main 方法可以启动项目，此main方法可以放置在任意的Class类定义中，不一定要放于此
	 */
	public static void main(String[] args) {
		JFinal.start("WebRoot", 810, "/", 5);
	}
}
