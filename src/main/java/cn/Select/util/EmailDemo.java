package cn.Select.util;


public class EmailDemo {
 
	
	
	
	public static void  demo(){
		Mail mail=new Mail();
		mail.setSmtpHost("smtp.163.com");/** 设置SMTP **/
		String mailFrom="15921952463@163.com";
		String password="asdf7468479";
		mail.setFrom(mailFrom);
		mail.setSmtpAuthentication(mailFrom, password);/** 账号及密码 **/
		mail.setTo("893568029@qq.com");/** 发送给谁 **/
		mail.setContentType(Mail.MODE_HTML);
		mail.setSubject("测试333");/** 邮件主题 **/
		mail.setBody("测试");/** 邮件内容 **/
		mail.send();
	}
	
	public static void main(String[] args) {
		demo();
	}
}
