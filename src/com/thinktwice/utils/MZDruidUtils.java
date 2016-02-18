package com.thinktwice.utils;

import java.util.Properties;

import jodd.util.StringUtil;

import com.jfinal.plugin.druid.DruidPlugin;

public class MZDruidUtils {
    /**
     * ��ȡDruid���ӳ�
     *
     * @param druidConfig
     * @return
     */
    public static DruidPlugin getDruidPlugin(Properties druidConfig) {
        DruidPlugin druidPlugin = new DruidPlugin(druidConfig.getProperty("jdbc.url"), druidConfig.getProperty("jdbc.username"), druidConfig.getProperty("jdbc.password"), druidConfig.getProperty("jdbc.driverClass"));
        if(StringUtil.isNotBlank(druidConfig.getProperty("jdbc.MaxActive"))) {
            druidPlugin = druidPlugin.setMaxActive(Integer.parseInt(druidConfig.getProperty("jdbc.MaxActive")));
        }
        if(StringUtil.isNotBlank(druidConfig.getProperty("jdbc.MinIdle"))) {
            druidPlugin = druidPlugin.setMinIdle(Integer.parseInt(druidConfig.getProperty("jdbc.MinIdle")));
        }
        if(StringUtil.isNotBlank(druidConfig.getProperty("jdbc.MaxActive"))) {
            druidPlugin = druidPlugin.setInitialSize(Integer.parseInt(druidConfig.getProperty("jdbc.InitialSize")));
        }
        if(StringUtil.isNotBlank(druidConfig.getProperty("jdbc.MinEvictableIdleTimeMillis"))) {
            druidPlugin = druidPlugin.setMinEvictableIdleTimeMillis(Integer.parseInt(druidConfig.getProperty("jdbc.MinEvictableIdleTimeMillis")));
        }
        if(StringUtil.isNotBlank(druidConfig.getProperty("jdbc.MaxPoolPreparedStatementPerConnectionSize"))) {
            druidPlugin = druidPlugin.setMaxPoolPreparedStatementPerConnectionSize(Integer.parseInt(druidConfig.getProperty("jdbc.MaxPoolPreparedStatementPerConnectionSize")));
        }
        if(StringUtil.isNotBlank(druidConfig.getProperty("jdbc.timeBetweenEvictionRunsMillis"))) {
            druidPlugin = druidPlugin.setTimeBetweenEvictionRunsMillis(Integer.parseInt(druidConfig.getProperty("jdbc.timeBetweenEvictionRunsMillis")));
        }
        if(StringUtil.isNotBlank(druidConfig.getProperty("jdbc.minEvictableIdleTimeMillis"))) {
            druidPlugin = druidPlugin.setMinEvictableIdleTimeMillis(Integer.parseInt(druidConfig.getProperty("jdbc.minEvictableIdleTimeMillis")));
        }
        return druidPlugin;
    }
}