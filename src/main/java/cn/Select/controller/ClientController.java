package cn.Select.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import cn.Select.model.Client;
import cn.Select.service.ClientService;
import cn.Select.util.Mail;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message; 
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeMessage;

@Controller
@RequestMapping("/")
public class ClientController {
	
	@Autowired
	private ClientService clientService;

	@RequestMapping("register")
	public String searchOrder(@ModelAttribute Client client, Model model, HttpServletRequest request) throws AddressException, MessagingException {
		clientService.register(client);
		//use jmail to send email
		sendEmail(client.getCourse_Session_ID(), client.getEmail());
		return "redirect:searchCourse.do";
		
	}
	
	public static void sendEmail(String course_session_id, String email) throws AddressException, MessagingException{
		Mail mail=new Mail();
		mail.setSmtpHost("smtp.163.com");/** 设置SMTP **/
		String mailFrom="15921952463@163.com";
		String password="密码";
		mail.setFrom(mailFrom);
		mail.setSmtpAuthentication(mailFrom, password);/** 账号及密码 **/
		mail.setTo(email);/** 发送给谁 **/
		mail.setContentType(Mail.MODE_HTML);
		mail.setSubject("REGISTER SUCCESS");/** 邮件主题 **/
		mail.setBody("恭喜你，课程注册成功！courseCode:"+course_session_id);/** 邮件内容 **/
		mail.send();
	}
	
	public static void main(String[] args) throws AddressException, MessagingException {
		sendEmail("1", "893568029@qq.com");
	}

}
