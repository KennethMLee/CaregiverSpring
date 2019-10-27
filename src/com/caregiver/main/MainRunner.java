package com.caregiver.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.caregiver.entities.Event;
import com.caregiver.entities.User;
import com.caregiver.services.EventServices;
import com.caregiver.services.UserServices;

public class MainRunner {

    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/CareGiverDB", "root", "");
            Statement stmt = conn.prepareStatement("select u from user");
            System.out.println("I am in db");
            conn.close();
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
    }

}

//package com.caregiver.main;
//
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;
//
//import com.caregiver.entities.Event;
//import com.caregiver.entities.User;
//import com.caregiver.services.EventServices;
//import com.caregiver.services.UserServices;
//
//public class MainRunner {
//
//	public static void main(String[] args) {
//		EventServices eventServices = new EventServices();
//		Event event = new Event("", null, null, null, null, null, null);
//		eventServices.addEvent(event);
//	}
//}
