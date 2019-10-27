package com.caregiver.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

import com.caregiver.DaoI.UserServicesDaoi;
import com.caregiver.entities.User;

public class UserServices implements UserServicesDaoi {

	@Override
	public boolean addUser(User user) {
		boolean result = false;
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			entityManager.getTransaction().begin();
			entityManager.persist(user);
			entityManager.getTransaction().commit();
			result = true;
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
			entityManagerFactory.close();
		}

		return result;
	}

	@Override
	public User validateUser(String username, String password) {
		User result = null;

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			Query query = entityManager.createNamedQuery("getUserByUserName");
			query.setParameter("username", username);
			User foundUser = (User) query.getSingleResult();
			result = foundUser;
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
			entityManagerFactory.close();
		}
		return result;

	}

	@Override
	public User getUserId(int userId) {
		User foundUser = new User();
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			System.out.println("xxx :" + userId);
			foundUser = entityManager.find(User.class, userId);
		} catch (PersistenceException e) {
			e.printStackTrace();
		}
		entityManager.close();
		entityManagerFactory.close();
		return foundUser;
	}

	@Override
	public List<User> getAllUsers() {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createNamedQuery("GetAllUsers");
		List<User> pcaregiverList = query.getResultList();
		entityManager.close();
		entityManagerFactory.close();
		return pcaregiverList;

	}

	@Override
	public boolean removeUser(int userId) {
		boolean result = true;

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			entityManager.getTransaction().begin();

			User foundUser = entityManager.find(User.class, userId);
			entityManager.remove(foundUser);

			entityManager.getTransaction().commit();
		} catch (PersistenceException e) {
			e.printStackTrace();
			result = false;
		}
		entityManager.close();
		entityManagerFactory.close();

		return result;
	}

//	@Override
//	public boolean updateUser(User user) {
//		boolean result = true;
//		
//		
//		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpringFinal");
//		EntityManager entityManager = entityManagerFactory.createEntityManager();
//		try {
//			entityManager.getTransaction().begin();
//			
//			User foundUser = entityManager.find(User.class, user.getUserId());
//			foundUser.setUserId(user.getUserId());
//			foundUser.setEmail(user.getEmail());
//			foundUser.setUsername(user.getUsername());
//			foundUser.setPassword(user.getPassword());
//			foundUser.setAccountType(user.getAccountType());
//			foundUser.setChildNameAlias(user.getChildNameAlias());
//			foundUser.setChildProfile(user.getChildProfile());
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

	@Override
	public User getUserByUsername(String username) {

		User foundPCaregiver = null;
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverSpring");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			Query query = entityManager.createNamedQuery("queryPCaregiverExist");
			query.setParameter("username", username);
			List<User> pcaregiverList = query.getResultList();
			if (!pcaregiverList.isEmpty())
				foundPCaregiver = pcaregiverList.get(0);

		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {

			entityManager.close();
			entityManagerFactory.close();
		}

		return foundPCaregiver;
	}

	@Override
	public boolean isUser(String username, String password) {

		User foundUser = getUserByUsername(username);

		return foundUser != null && foundUser.getUsername().equals(username)
				&& foundUser.getPassword().equals(password);
	}

//	@Override
//	public List<Event> getAllEventsById(int eventId) {
//		Event foundEvent = null;
//		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("CaregiverFinal");
//		EntityManager entityManager = entityManagerFactory.createEntityManager();
//		try {
//			foundEvent = entityManager.find(Event.class, eventId);
//		} catch (PersistenceException e) {
//			e.getMessage();
//		} finally {
//			entityManager.close();
//			entityManagerFactory.close();
//		}
//
//		return foundEvent != null ? foundEvent.getEvent() : new ArrayList<Event>();
//	}

}
