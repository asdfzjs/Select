package cn.Select.util;


public class EmailDemo {
 
	
	
	
	public static void  demo(){
		Mail mail=new Mail();
		mail.setSmtpHost("smtp.163.com");/** ����SMTP **/
		String mailFrom="15921952463@163.com";
		String password="asdf7468479";
		mail.setFrom(mailFrom);
		mail.setSmtpAuthentication(mailFrom, password);/** �˺ż����� **/
		mail.setTo("893568029@qq.com");/** ���͸�˭ **/
		mail.setContentType(Mail.MODE_HTML);
		mail.setSubject("����333");/** �ʼ����� **/
		mail.setBody("����");/** �ʼ����� **/
		mail.send();
	}
	
	public static void main(String[] args) {
		demo();
	}
}
