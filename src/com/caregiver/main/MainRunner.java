package com.caregiver.main;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.caregiver.entities.Event;
import com.caregiver.entities.User;
import com.caregiver.services.EventServices;
import com.caregiver.services.UserServices;

public class MainRunner {

	public static void main(String[] args) {
		EventServices eventServices = new EventServices();
		Event event = new Event("", null, null, null, null, null, null);
		eventServices.addEvent(event);
	}



}
