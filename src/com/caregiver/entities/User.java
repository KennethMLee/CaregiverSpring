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

//	@Override
//	public int hashCode() {
//		final int prime = 31;
//		int result = 1;
//		result = prime * result + ((accountType == null) ? 0 : accountType.hashCode());
//		result = prime * result + ((childNameAlias == null) ? 0 : childNameAlias.hashCode());
//		result = prime * result + ((childProfile == null) ? 0 : childProfile.hashCode());
//		result = prime * result + ((email == null) ? 0 : email.hashCode());
//		result = prime * result + ((password == null) ? 0 : password.hashCode());
//		result = prime * result + userId;
//		result = prime * result + ((username == null) ? 0 : username.hashCode());
//		return result;
//	}
//
//	@Override
//	public boolean equals(Object obj) {
//		if (this == obj)
//			return true;
//		if (obj == null)
//			return false;
//		if (getClass() != obj.getClass())
//			return false;
//		User other = (User) obj;
//		if (accountType == null) {
//			if (other.accountType != null)
//				return false;
//		} else if (!accountType.equals(other.accountType))
//			return false;
//		if (childNameAlias == null) {
//			if (other.childNameAlias != null)
//				return false;
//		} else if (!childNameAlias.equals(other.childNameAlias))
//			return false;
//		if (childProfile == null) {
//			if (other.childProfile != null)
//				return false;
//		} else if (!childProfile.equals(other.childProfile))
//			return false;
//		if (email == null) {
//			if (other.email != null)
//				return false;
//		} else if (!email.equals(other.email))
//			return false;
//		if (password == null) {
//			if (other.password != null)
//				return false;
//		} else if (!password.equals(other.password))
//			return false;
//		if (userId != other.userId)
//			return false;
//		if (username == null) {
//			if (other.username != null)
//				return false;
//		} else if (!username.equals(other.username))
//			return false;
//		return true;
//	}
//
	@Override
	public String toString() {
		return "User [userId=" + userId + ", email=" + email + ", username=" + username + ", password=" + password
				+ ", accountType=" + accountType + ", childNameAlias=" + childNameAlias + ", childProfile="
				+ childProfile + "]";
	}
}