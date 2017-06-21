package com.cto.auction.vo;

import java.util.Date;

public class MemberVO {
	private Integer userId;
	private String userEmail;
	private String password;
	private String userName;
	private Integer auth;
	private Integer userPoint;
	private Date registerDate;
	private Date userUpdatedate;
	
	// Getter/Setter
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getAuth() {
		return auth;
	}

	public void setAuth(Integer auth) {
		this.auth = auth;
	}

	public Integer getUserPoint() {
		return userPoint;
	}

	public void setUserPoint(Integer userPoint) {
		this.userPoint = userPoint;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public Date getUserUpdatedate() {
		return userUpdatedate;
	}

	public void setUserUpdatedate(Date userUpdatedate) {
		this.userUpdatedate = userUpdatedate;
	}

	// toString()
	@Override
	public String toString() {
		return "MemberVO [userId=" + userId 
				+ ", userEmail=" + userEmail 
				+ ", userPw=" + password 
				+ ", userName=" + userName 
				+ ", userEmail=" + userEmail 
				+ ", auth=" + auth 
				+ ", userPoint=" + userPoint 
				+ ", registerDate=" + registerDate 
				+ ", userUpdatedate=" + userUpdatedate 
				+ "]";
	}

}