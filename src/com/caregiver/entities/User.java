package com.caregiver.entities;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table
@NamedQueries({ @NamedQuery(query = "SELECT u FROM User u", name = "getAllUser"),
		@NamedQuery(query = "DELETE FROM User u WHERE u.userId = :user_id", name = "removeUserbyId"),
		@NamedQuery(query = "SELECT u FROM User u WHERE u.username = :username", name = "getUserByUserName") })
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;

	@Basic
	@Column
	private String email;

	@Basic
	@Column
//	@Size(min = 2, max = 20, message = "Username length must be between {2} and {1}")
	private String username;

	@Basic
	@Column
	private String password;

	@Basic
	@Column
	private String accountType;

	@Basic
	@Column
	private String childNameAlias;

	@Basic
	@Column
	private String childProfile;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String email, String username, String password, String accountType, String childNameAlias,
			String childProfile) {
		super();
		this.email = email;
		this.username = username;
		this.password = password;
		this.accountType = accountType;
		this.childNameAlias = childNameAlias;
		this.childProfile = childProfile;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getChildNameAlias() {
		return childNameAlias;
	}

	public void setChildNameAlias(String childNameAlias) {
		this.childNameAlias = childNameAlias;
	}

	public String getChildProfile() {
		return childProfile;
	}

	public void setChildProfile(String childProfile) {
		this.childProfile = childProfile;
	}


	@Override
	public String toString() {
		return "User [userId=" + userId + ", email=" + email + ", username=" + username + ", password=" + password
				+ ", accountType=" + accountType + ", childNameAlias=" + childNameAlias + ", childProfile="
				+ childProfile + "]";
	}
}