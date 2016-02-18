package com.thinktwice.common.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

/**
 * @see 该类用来发送qq邮件
 * @version 1.0
 * */
public class EmailTool implements Serializable {

	public static void main(String[] args) {
		try {
			/**只要你的电脑能上网，发件人账号密码地址都正确设置，这个邮件就绝对能发出去*/
			String email = "654608137@qq.com";// 收件人地址
			String title = "易英语官网";// 邮件标题
			String url = "http://www.baidu.com";
			String img = "http://img1.kaixin001.com.cn/i/sy_tp1_1.gif";
			String templetPath = "D:\\test\\email\\findPass.txt";
			String[] args1 = new String[] { "易英语", "EasilyEnglish", email, url, url, url, img };// 邮件模板的参数设置
			System.out.println(bean.sendEmail(email, title, templetPath, args1, templetPath));// 发送邮件
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static final long serialVersionUID = 1L;
	private static EmailTool bean = new EmailTool();

	/**
	 * @see 以单例模式获得javabean
	 * @return Email
	 * */
	public static EmailTool getBean() {
		return bean;
	}

	/**
	 * @see 用QQ邮箱发邮件
	 * @param toEmail 收件人地址
	 * @param title 邮件标题
	 * @param templetPath 模板路径(物理路径)
	 * @param args 模板中需要替换的值
	 * @param affixPath 附件的路径(物理路径,可以为null)
	 * @return boolean
	 * */
	public Boolean sendEmail(String toEmail, String title, String templetPath, String[] args, String affixPath) {
		Boolean result = false;
		try {
			Properties properties = new Properties();
			Session session = Session.getInstance(properties, null);
			properties.put("mail.smtp.host", emailServerIP);// 设置服务器的IP或域名
			properties.put("mail.smtp.auth", "true");// 允许smtp校验
			Transport transport = session.getTransport("smtp");
			transport.connect(emailServerIP, fromEmailAccount, fromEmailPassword);// 设置发件人的用户名和密码
			Message message = new MimeMessage(session);
			message.setSubject(title);// 设置邮件主题
			Address address[] = { new InternetAddress(fromEmail) };// 改变发件人地址
			message.addFrom(address);
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));// 设置收件人地址			
			message.setSentDate(new Date());// 设置发送时间
			/**设置mail正文 ---begin*/
			String content = readTemplet(templetPath);// 读取邮件模板的内容
			for (int i = 0; i < args.length; i++) {
				content = content.replace("{" + i + "}", args[i]);// 替换模板中的占位符
			}
			MimeMultipart multipart = new MimeMultipart();
			MimeBodyPart contentPart = new MimeBodyPart();
			contentPart.setDataHandler(new DataHandler(content, "text/html;charset=gbk"));// 设置正文内容
			multipart.addBodyPart(contentPart);// 设置正文
			if (null != affixPath && !"".equals(affixPath)) {
				File file = new File(affixPath);
				if (file.exists() && !file.isDirectory() && file.length() <= affixFileSize) {// 附件必须在10M以下
					MimeBodyPart affixPart = new MimeBodyPart();
					affixPart.setDataHandler(new DataHandler(new FileDataSource(affixPath)));// 读取附件
					affixPart.setFileName(MimeUtility.encodeText(file.getName()));//设置附件标题
					multipart.addBodyPart(affixPart);// 设置附件
				}
			}
			message.setContent(multipart);
			/**设置mail正文---end*/
			message.saveChanges();// 保存发送信息
			transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));// 发送邮件
			transport.close();
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 读模板文件(换行符为\n)
	private String readTemplet(String templetPath) {
		if (!new File(templetPath).exists()) {
			return "";
		}
		try {
			InputStream input = new FileInputStream(templetPath);
			InputStreamReader read = new InputStreamReader(input, "UTF-8");
			BufferedReader reader = new BufferedReader(read);
			String line;
			String result = "";
			while ((line = reader.readLine()) != null) {
				result += line + "\n";
			}
			reader.close();
			read.close();
			input.close();
			return result.substring(result.indexOf("<html>"));
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	/**发件人的账号密码地址必须用你自己的，而且要开通smtp服务(打开你的qq邮箱点几下就行了)*/
	private final String fromEmailAccount = "171627856";// 发件人账号(qq号码)
	private final String fromEmailPassword = "yaokwok.";// 发件人密码(qq密码)
	private final String fromEmail = "loveabc.top@foxmail.com";// 发件人地址(qq邮箱)
	private final Long affixFileSize = 1048576L * 10l;// 允许发送的最大附件大小(字节)
	private final String emailServerIP = "smtp.qq.com";// 服务器的IP或域名

}
