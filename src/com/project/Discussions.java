package com.project;

import java.sql.Date;

public class Discussions {
	private String username;
	private String message;
	private Date posted_on;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getPosted_on() {
		return posted_on;
	}
	public void setPosted_on(Date posted_on) {
		this.posted_on = posted_on;
	}
	
}
