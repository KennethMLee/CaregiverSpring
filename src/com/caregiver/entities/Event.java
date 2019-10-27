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

@Entity
@Table
@NamedQueries({ @NamedQuery(query = "SELECT e FROM Event e", name = "getAllEvent"),
	@NamedQuery(query = "SELECT u FROM Event u WHERE u.username = :username", name = "getEventByUserName") })
public class Event {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int eventId;
	
	@Basic
	@Column
	private String username;
	
	@Basic
	@Column
	private String accountType; // Primary Caregiver or Caregiver.
	
	@Basic
	@Column
	private String date;
	
	@Basic
	@Column
	private String time;
	
	@Basic
	@Column
	private String primaryCaregiverUsername;
	
	@Basic
	@Column
	private String childNameAlias;	
	
	@Basic
	@Column
	private String event;

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPrimaryCaregiverUsername() {
		return primaryCaregiverUsername;
	}

	public void setPrimaryCaregiverUsername(String primaryCaregiverUsername) {
		this.primaryCaregiverUsername = primaryCaregiverUsername;
	}

	public String getChildNameAlias() {
		return childNameAlias;
	}

	public void setChildNameAlias(String childNameAlias) {
		this.childNameAlias = childNameAlias;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	@Override
	public String toString() {
		return "Event [eventId=" + eventId + "username=" + username + ", accountType=" + accountType + ", date="
				+ date + ", time=" + time + ", primaryCaregiverUsername=" + primaryCaregiverUsername
				+ ", childNameAlias=" + childNameAlias + ", event=" + event + "]";
	}

	public Event() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Event(String username, String accountType, String date, String time,
			String primaryCaregiverUsername, String childNameAlias, String event) {
		super();
		this.username = username;
		this.accountType = accountType;
		this.date = date;
		this.time = time;
		this.primaryCaregiverUsername = primaryCaregiverUsername;
		this.childNameAlias = childNameAlias;
		this.event = event;
	}

	public Event(int id, String username, String accountType, String date, String time,
			String primaryCaregiverUsername, String childNameAlias, String event) {
		super();
		this.eventId = id;
		this.username = username;
		this.accountType = accountType;
		this.date = date;
		this.time = time;
		this.primaryCaregiverUsername = primaryCaregiverUsername;
		this.childNameAlias = childNameAlias;
		this.event = event;
	}

	
	
}
