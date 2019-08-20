package com.caregiver.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.caregiver.entities.Event;
import com.caregiver.entities.User;
import com.caregiver.services.EventServices;
import com.caregiver.services.UserServices;

@Controller
@SessionAttributes(value = { "user"})
public class PageController {
	
	@RequestMapping("/LogIn")
	public ModelAndView logUserIn(@ModelAttribute("newuser") User newuser, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView();
		UserServices uService = new UserServices();
		User founduser = uService.validateUser(newuser.getUsername(), newuser.getPassword());
		if (founduser != null && founduser.getAccountType().equals("primaryCaregiver")) {
			
			mv.addObject("primaryCaregiver", "block");
			mv.addObject("user", founduser);
			mv.setViewName("redirect:/EventsPage"); // 
		} else if (founduser != null && founduser.getAccountType().equalsIgnoreCase("caregiver")) {
			mv.addObject("caregiver", "block");
			mv.addObject("user", founduser);
			mv.setViewName("redirect:/EventsPage");// Show Child Profile page
		} else {
			mv.setViewName("redirect:/LogInPage");
		}
		return mv;
	}
	
	@RequestMapping("/RegisterUser")
	public ModelAndView getLogInForNewUser(@ModelAttribute("newuser") User newuser) {
		ModelAndView mv = new ModelAndView();

		System.out.println("I am here!");

		UserServices uService = new UserServices();
		boolean result = uService.addUser(newuser);

		mv.setViewName("redirect:/LogInPage");

		return mv;
	}

	@RequestMapping("/HomePage")
	public ModelAndView getHomePage() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	@RequestMapping("/LogInPage")
	public ModelAndView getLogIn() {
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("newuser", new User());
		return mv;
	}

	@RequestMapping("/RegistrationPage")
	public ModelAndView getRegistrationPage() {
		ModelAndView mv = new ModelAndView("registration");
		mv.addObject("newuser", new User());
		return mv;
	}

	@RequestMapping("/EventsPage")
	public ModelAndView getEventsPage() {
		//ModelAndView mav = new ModelAndView("events");
		//mv.addObject("userKey", new Event());
		
		EventServices eServices = new EventServices();
		List<Event> eventList = eServices.getAllEvents();
		
		for(Event e : eventList) {
		System.out.println(" TESSST:   " + e.getChildNameAlias());
		}
		
		ModelAndView mav = new ModelAndView("events");
		mav.addObject("eventList", eventList);
		System.out.println("-------------------"+eventList.size());
	
		return mav;
	}
	
//	@RequestMapping("/EventsPage")
//	public ModelAndView getEventsPage(@ModelAttribute("user") User user) {
//		String username = user.getUsername();
//		
//		EventServices eServices = new EventServices();
//		List<Event> eventList = eServices.getEventByUsername(username);
//		
//		for(Event e : eventList) {
//		System.out.println(" TESSST:   " + e.getChildNameAlias());
//		}
//		
//		ModelAndView mav = new ModelAndView("events");
//		mav.addObject("eventList", eventList);
//		System.out.println("-------------------"+eventList.size());
//	
//		return mav;
//	}
	
	
	// Creates an event by taking date, time, event details from the front end
	// and getting the other details, username, accountType, and child alias of the User object
	// combines the data and creates a new event object to be persisted to the database.
	@RequestMapping("/addEvent") 
	public ModelAndView insertEvent(@ModelAttribute("user") User user, 
			@RequestParam("date") String date, @RequestParam("time") String time, 
			@RequestParam("event") String event )
	{
		ModelAndView mv = new ModelAndView("events");
		//mv.addObject("userKey", new Event());
		//UserServices uService = new UserServices();
		EventServices eventServices = new EventServices();
		Event newEvent = new Event(user.getUsername(),user.getAccountType(),date,time, 
		user.getUsername(),user.getChildNameAlias(),event);
		boolean result = eventServices.addEvent(newEvent);
		return mv;
	}

	@RequestMapping("/addCaregiver")
	public ModelAndView getAddCaregiverPage() {
		ModelAndView mv = new ModelAndView("addCaregiver");
		
		return mv;
	}
	
}
