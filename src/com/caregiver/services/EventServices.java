package com.caregiver.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

import com.caregiver.DaoI.EventServicesDaoi;
import com.caregiver.entities.Event;

public class EventServices implements EventServicesDaoi{
	
	@Override
	// Adds event to the database
	public boolean addEvent(Event event) {
		boolean result = true;
		
		// Entity Manager API is used to create an entity instance of event
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			entityManager.getTransaction().begin();
			entityManager.persist(event); // Adds event to the database
			entityManager.getTransaction().commit();
		} catch (PersistenceException e) {
			e.printStackTrace();
			result = false;
		}
		entityManager.close();
		entityManagerFactory.close();
				
		return result;
	}

	
	@Override
	// Displays all events in database
	public List<Event> getAllEvents(){
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createNamedQuery("getAllEvent"); 
		List<Event> eventList = query.getResultList();
		entityManager.close();
		entityManagerFactory.close();
		return eventList;
	}
	
	
	@Override
	public Event getEventById(int eventId) {
		Event event = null;
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();

		try {
			event = entitymanager.find(Event.class, eventId);

		} catch (PersistenceException e) {
			e.getMessage();
		} finally {
			entitymanager.close();
			entitymanagerfactory.close();
		}

		return event;
	}
	
	
	@Override
	public List<Event> getEventByUsername(String username){
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("Select e."+username+" from Event");
		List<Event> eventList = query.getResultList();
		entityManager.close();
		entityManagerFactory.close();
		return eventList;
	}


	@Override
	public boolean updateEvent(Event event) {
		boolean result = true;
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			// Find event by Event ID then set with updated information
			Event foundEvent = entityManager.find(Event.class, event.getEventId());
			foundEvent.setUsername(event.getUsername());
			foundEvent.setAccountType(event.getAccountType());
			foundEvent.setDate(event.getDate());
			foundEvent.setTime(event.getTime());
			foundEvent.setPrimaryCaregiverUsername(event.getPrimaryCaregiverUsername());
			foundEvent.setChildNameAlias(event.getChildNameAlias());
			foundEvent.setEvent(event.getEvent());

			entityManager.getTransaction().commit();
			
		} catch (PersistenceException e) {
			e.printStackTrace();
			result = false;
		}
		entityManager.close();
		entityManagerFactory.close();
		
		return result;
	}

	
	
	@Override
	public boolean removeEvent(int eventId) {
		boolean result = true;
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			Event foundEvent = entityManager.find(Event.class, eventId);
			entityManager.remove(foundEvent);
			
			entityManager.getTransaction().commit();
		} catch (PersistenceException e) {
			e.printStackTrace();
			result = false;
		}
		entityManager.close();
		entityManagerFactory.close();
		
		return result;
	}
	
	
}

















//package com.caregiver.services;
//
//import java.util.List;
//
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;
//import javax.persistence.PersistenceException;
//import javax.persistence.Query;
//
//import com.caregiver.DaoI.EventServicesDaoi;
//import com.caregiver.entities.Event;
//
//public class EventServices implements EventServicesDaoi{
//	
//	@Override
//	public boolean addEvent(Event event) {
//		boolean result = true;
//		
//		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
//		EntityManager entityManager = entityManagerFactory.createEntityManager();
//		try {
//			entityManager.getTransaction().begin();
//			entityManager.persist(event);
//			entityManager.getTransaction().commit();
//		} catch (PersistenceException e) {
//			e.printStackTrace();
//			result = false;
//		}
//		entityManager.close();
//		entityManagerFactory.close();
//				
//		return result;
//	}
//
//	
//	@Override
//	public List<Event> getAllEvents(){
//		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
//		EntityManager entityManager = entityManagerFactory.createEntityManager();
//		Query query = entityManager.createNamedQuery("getAllEvent");
//		List<Event> eventList = query.getResultList();
//		entityManager.close();
//		entityManagerFactory.close();
//		return eventList;
//	}
//	
//	@Override
//	public List<Event> getEventByUsername(String username){
//		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
//		EntityManager entityManager = entityManagerFactory.createEntityManager();
//		Query query = entityManager.createQuery("SELECT e.username FROM event Where e.username=" + username);
//		List<Event> eventList = query.getResultList();
//		entityManager.close();
//		entityManagerFactory.close();
//		return eventList;
//	}
////	@Override
////	public boolean removeEvent(int eventId) {
////		boolean result = true;
////		
////		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
////		EntityManager entityManager = entityManagerFactory.createEntityManager();
////		try {
////			entityManager.getTransaction().begin();
////			
////			Event foundEvent = entityManager.find(Event.class, eventId);
////			entityManager.remove(foundEvent);
////			
////			entityManager.getTransaction().commit();
////		} catch (PersistenceException e) {
////			e.printStackTrace();
////			result = false;
////		}
////		entityManager.close();
////		entityManagerFactory.close();
////		
////		return result;
////	}
//
////	@Override
////	public boolean updateEvent(Event event) {
////		boolean result = true;
////		
////		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
////		EntityManager entityManager = entityManagerFactory.createEntityManager();
////		try {
////			entityManager.getTransaction().begin();
////			
////			Event foundEvent = entityManager.find(Event.class, event.getEventId());
////			//foundEvent.setUsername(event.getUsername());
////			foundEvent.setAccountType(event.getAccountType());
////			foundEvent.setDate(event.getDate());
////			foundEvent.setTime(event.getTime());
////			foundEvent.setChildNameAlias(event.getChildNameAlias());
////			foundEvent.setChildType(event.getChildType());
////			foundEvent.setEvent(event.getEvent());
////			
////			
////			entityManager.getTransaction().commit();
////			
////		} catch (PersistenceException e) {
////			e.printStackTrace();
////			result = false;
////		}
////		entityManager.close();
////		entityManagerFactory.close();
////		
////		return result;
////	}
//	
//}
