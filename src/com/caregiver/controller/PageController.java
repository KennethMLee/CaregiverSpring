package com.caregiver.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.caregiver.entities.Event;
import com.caregiver.entities.User;
import com.caregiver.services.EventServices;
import com.caregiver.services.UserServices;

@Controller
// Session Attribute, after login the 
@SessionAttributes(value = { "user"})
public class PageController {
	
	@RequestMapping("/LogIn")
	public ModelAndView logUserIn(@ModelAttribute("newuser") User newuser, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		ModelAndView mav = new ModelAndView();
		UserServices uService = new UserServices();
		User founduser = uService.validateUser(newuser.getUsername(), newuser.getPassword());
		if (founduser != null && founduser.getAccountType().equals("primaryCaregiver")) {
			
			mav.addObject("primaryCaregiver", "block");
			mav.addObject("user", founduser); // founder user gets passed back to the user for the session.
			mav.setViewName("redirect:/EventsPage"); // 
		} else if (founduser != null && founduser.getAccountType().equalsIgnoreCase("caregiver")) {
			mav.addObject("caregiver", "block");
			mav.addObject("user", founduser); // founder user gets passed back to the user for the session.
			mav.setViewName("redirect:/EventsPage");
		} else {
			mav.setViewName("redirect:/LogInPage");
		}
		return mav;
	}
	
	// After successful registering brings user back to login view.
	@RequestMapping("/RegisterUser")
	public ModelAndView getLogInForNewUser(@ModelAttribute("newuser") User newuser) {
		ModelAndView mav = new ModelAndView();

		System.out.println("Registered Successfully!");

		UserServices uService = new UserServices();
		boolean result = uService.addUser(newuser);

		mav.setViewName("redirect:/LogInPage");

		return mav;
	}
	
	// Returns login / index view
	@RequestMapping("/HomePage")
	public ModelAndView getHomePage() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	
	@RequestMapping("/LogInPage")
	public ModelAndView getLogIn() {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("newuser", new User());
		return mav;
	}

	@RequestMapping("/RegistrationPage")
	public ModelAndView getRegistrationPage() {
		ModelAndView mv = new ModelAndView("registration");
		mv.addObject("newuser", new User());
		return mv;
	}

	@RequestMapping("/EventsPage")
	public ModelAndView getEventsPage() {

		ModelAndView mav = new ModelAndView("addEvent");	
		return mav;
	}
	
	// Creates an event by taking date, time, event details from the front end
	// and getting the other details, username, accountType, and child alias of the User object
	// combines the data and creates a new event object to be persisted to the database.
	@RequestMapping("/addEvent") 
	public ModelAndView insertEvent(@ModelAttribute("user") User user, 
			@RequestParam("date") String date, @RequestParam("time") String time, 
			@RequestParam("event") String event )
	{
		ModelAndView mav = new ModelAndView("addEvent");
		EventServices eventServices = new EventServices();
		Event newEvent = new Event(user.getUsername(),user.getAccountType(),date,time, 
		user.getUsername(),user.getChildNameAlias(),event);
		eventServices.addEvent(newEvent);
		return mav;
	}
	
	@RequestMapping("/ShowEventsPage")
	public ModelAndView showEventsPage() {
		
		EventServices eServices = new EventServices();
		List<Event> eventList = eServices.getAllEvents();
		
		ModelAndView mav = new ModelAndView("showEvents");
		mav.addObject("eventList", eventList);
	
		return mav;
	}
	
	// Shows current information to the event. 
	@RequestMapping("/updateEvent/{urlId}")
	public ModelAndView updateEvent(@PathVariable("urlId") int id) { // Stores the event id to Pathvariable
		EventServices eServices = new EventServices();
		Event event = eServices.getEventById(id); // Calls event id from eventlist selected from the view

		ModelAndView mav = new ModelAndView("updateEvent");
		mav.addObject("event", event);
		mav.addObject("eventId", event.getEventId());
		mav.addObject("username", event.getUsername());
		mav.addObject("AccountType", event.getAccountType());
		mav.addObject("Date", event.getDate());
		mav.addObject("Time", event.getTime());
		mav.addObject("PrimaryCaregiverUsername", event.getPrimaryCaregiverUsername());
		mav.addObject("ChildNameAlias", event.getChildNameAlias());
		mav.addObject("Event", event.getEvent());

		return mav;
	}
	
	
	@RequestMapping(value = "/updateEventForm/{urlId}")
	// Gets the updated information to be able to update on the database
	public ModelAndView updateEvent(@PathVariable("urlId") int id, @RequestParam("username") String username,
			@RequestParam("accountType") String accountType, @RequestParam("date") String date, @RequestParam("time") String time,
			@RequestParam("primaryCaregiverUsername") String primaryCaregiverUsername, @RequestParam("childNameAlias") String childNameAlias,
			@RequestParam("event") String event) {

		boolean result = true;

		EventServices eServices = new EventServices();
		Event e = new Event(id, username, accountType, date, time, primaryCaregiverUsername, childNameAlias, event);

		if (e != null) {
			result = eServices.updateEvent(e);
		}
		
		String message = result ? " >>Successfully Updated Event << "
				: "  >> Unable to update Event << ";
		String color = result ? "green" : "red";
		List<Event> eventList = eServices.getAllEvents();

		ModelAndView mav = new ModelAndView("showEvents");
		mav.addObject("messageResult", message);
		mav.addObject("textColor", color);
		mav.addObject("eventList", eventList);

		return mav;
	}
	
	
	// Removes event by event ID
	@RequestMapping("/removeEvent/{urlId}")
	public ModelAndView deleteEmployee(@PathVariable("urlId") int id) {

		EventServices eServices = new EventServices();
		boolean result = eServices.removeEvent(id);
		String message = result ? "Product Removed= " + id : "Unable to remove product " + id;

		List<Event> eventList = eServices.getAllEvents();

		ModelAndView mav = new ModelAndView("showEvents");
		mav.addObject("messageResult", message);
		mav.addObject("id", id);
		mav.addObject("eventList", eventList);
		return mav;
	}

//	@RequestMapping("/addCaregiver")
//	public ModelAndView getAddCaregiverPage() {
//		ModelAndView mav = new ModelAndView("addCaregiver");
//		return mav;
//	}
	
}



