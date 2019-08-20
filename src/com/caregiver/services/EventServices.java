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
	public boolean addEvent(Event event) {
		boolean result = true;
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			entityManager.getTransaction().begin();
			entityManager.persist(event);
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
	public List<Event> getEventByUsername(String username){
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("Select e."+username+" from Event");
		List<Event> eventList = query.getResultList();
		entityManager.close();
		entityManagerFactory.close();
		return eventList;
	}
//	@Override
//	public boolean removeEvent(int eventId) {
//		boolean result = true;
//		
//		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
//		EntityManager entityManager = entityManagerFactory.createEntityManager();
//		try {
//			entityManager.getTransaction().begin();
//			
//			Event foundEvent = entityManager.find(Event.class, eventId);
//			entityManager.remove(foundEvent);
//			
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

//	@Override
//	public boolean updateEvent(Event event) {
//		boolean result = true;
//		
//		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
//		EntityManager entityManager = entityManagerFactory.createEntityManager();
//		try {
//			entityManager.getTransaction().begin();
//			
//			Event foundEvent = entityManager.find(Event.class, event.getEventId());
//			//foundEvent.setUsername(event.getUsername());
//			foundEvent.setAccountType(event.getAccountType());
//			foundEvent.setDate(event.getDate());
//			foundEvent.setTime(event.getTime());
//			foundEvent.setChildNameAlias(event.getChildNameAlias());
//			foundEvent.setChildType(event.getChildType());
//			foundEvent.setEvent(event.getEvent());
//			
//			
//			entityManager.getTransaction().commit();
//			
//		} catch (PersistenceException e) {
//			e.printStackTrace();
//			result = false;
//		}
//		entityManager.close();
//		entityManagerFactory.close();
//		
//		return result;
//	}
	
}
