/**
 * Project Name:Select
 * File Name:Client.java
 * Package Name:cn.Select.model
 * Date:2017年1月2日下午9:39:58
 * Copyright (c) 2017, chenzhou1025@126.com All Rights Reserved.
 *
*/

package cn.Select.model;
/**
 * ClassName:Client <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason:	 TODO ADD REASON. <br/>
 * Date:     2017年1月2日 下午9:39:58 <br/>
 * @author   User
 * @version  
 * @since    JDK 1.6
 * @see 	 
 */
public class Client {
	private String Lastname;
	private String Firstname;
	private String Address;
	private String Phone;
	private String Email;
	private String Course_Session_ID;
	public String getLastname() {
		return Lastname;
	}
	public void setLastname(String lastname) {
		Lastname = lastname;
	}
	public String getFirstname() {
		return Firstname;
	}
	public void setFirstname(String firstname) {
		Firstname = firstname;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getCourse_Session_ID() {
		return Course_Session_ID;
	}
	public void setCourse_Session_ID(String course_Session_ID) {
		Course_Session_ID = course_Session_ID;
	}

}

