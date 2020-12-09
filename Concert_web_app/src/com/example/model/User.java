package com.example.model;

import javax.persistence.*;


/**
 * User.java
 * This is a model class represents a User entity
*/

@Entity
@Table(name="users" , schema = "users")
public class User {
	
	@Id
	@Column(name="username")
	protected String username;
	
	//@Column(name="email")
	//protected String email;
	
	@Column(name="password")
	protected String password;
	
	public User() {
	}
	
	public User(String username, String password) {
		super();
		this.username = username;
		//this.email = email;
		this.password = password;
	}

	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
//	public String getName() {
//		return email;
//	}
//	public void setEmail(String email) {
//		this.email = email;
//	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
