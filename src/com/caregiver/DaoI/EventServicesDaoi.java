package com.caregiver.DaoI;

import java.util.List;

import com.caregiver.entities.Event;

public interface EventServicesDaoi {

	boolean addEvent(Event event);

	List<Event> getAllEvents();

//	boolean removeEvent(int eventId);
//
//	boolean updateEvent(Event event);
	
	

}
