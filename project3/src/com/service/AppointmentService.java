package com.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate4.HibernateTemplate;

import com.pojo.Appointment;
import com.pojo.DoctorDetails;
import com.pojo.addhospitalmodel;
import com.pojo.patientBookingDetails;

public class AppointmentService {

	 private HibernateTemplate hibernateTemplate;
	  
	    private AppointmentService() { }

	    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
	        this.hibernateTemplate = hibernateTemplate;
	    }

	    
	    public List<addhospitalmodel> getHospitalName(String givenInput)
	    {
	    	
	    	Session session = hibernateTemplate.getSessionFactory().openSession();
	    	Transaction tx = session.beginTransaction();
	    	
	    	String strQuery = "SELECT * FROM addproduct where hospital_name LIKE '" + givenInput + "%'";
	    	
	    	
	    	SQLQuery qry = session.createSQLQuery(strQuery);
	    	 qry.addEntity(addhospitalmodel.class);
	    	
	    	List<addhospitalmodel> lstHospitalData = qry.list();
	    	
	    	
	    	for (addhospitalmodel objHospitalData :lstHospitalData )
	    	{
	    		System.out.println("Hospital Name "+objHospitalData.getName());
	    	}
	    	
	    	return lstHospitalData;
	    	
	    }// of getHospitalName
	    
	    
	    public List<DoctorDetails> getDoctors(String hosname, String locality, String city)
	    {
	    	Session session = hibernateTemplate.getSessionFactory().openSession();
	    	Transaction tx = session.beginTransaction();
	    	
	    	String strQuery = "SELECT * FROM hosdoc WHERE hospital_id IN(SELECT hospital_unique_id FROM addproduct WHERE hospital_name='"+ hosname +"' AND addressline_1='"+ locality +"' AND city='"+ city +"')";
	    	System.out.println("Sql Query "+strQuery);
	    	
	    	
	    	SQLQuery qry = session.createSQLQuery(strQuery);
	    	 qry.addEntity(DoctorDetails.class);
	    	
	    	List<DoctorDetails> lstDoctors = qry.list();
	    	
	    	
	    	for (DoctorDetails objDoctorData :lstDoctors )
	    	{
	    		System.out.println("Doctor Name "+objDoctorData.getDoctorname());
	    	}
	    	
	    	return lstDoctors;
	    	
	    	
	    	
	   
	    }
	    
	    
	    public List<String> getSlots(String hospitalID, String doctorID, String date)
	    {
	    	Session session = hibernateTemplate.getSessionFactory().openSession();
	    	Transaction tx = session.beginTransaction();
	    	
	    	String strQuery = "select slots from all_the_slots where slots NOT IN (select slots from patientbookingdetails where doctor_id='"+ doctorID +"' AND hospital_id='" + hospitalID +"'AND date='"+date+"') order by id";
	    	System.out.println("Sql Query "+strQuery);
    	
	    	SQLQuery qry = session.createSQLQuery(strQuery);

	    	List patientBookingDetailsList = qry.list();
	    	
            System.out.println(patientBookingDetailsList);
            
            ArrayList <String> slotList = new ArrayList<String>();
            for (Object patientBookingDetailsObj : patientBookingDetailsList)
            {
            	System.out.println("Slots..."+patientBookingDetailsObj.toString());
            	slotList.add(patientBookingDetailsObj.toString());
            }
	    	
	    	return slotList;	    	
	   
	    }
	    

	    
	    public List<String> saveAppointment(HttpSession ServletSession, String slots)
	    {
	    	ServletSession.setAttribute("user", "temp");
		    	
	    	
	    	
	    	
	    	patientBookingDetails patientBookingDetailsObj = new patientBookingDetails();
	       	patientBookingDetailsObj.setDoctorid((String)ServletSession.getAttribute("DoctorID"));
	    	patientBookingDetailsObj.setHospital_id((String)ServletSession.getAttribute("HospitalID"));
	    	patientBookingDetailsObj.setUserID((String)ServletSession.getAttribute("user"));
	    	patientBookingDetailsObj.setSlots(slots);
	    	patientBookingDetailsObj.setDate((String)ServletSession.getAttribute("AppointmentDate"));
	    	
	    	patientBookingDetailsObj.setDoctor_name((String)ServletSession.getAttribute("DoctorName"));
	    	
	    	
	    	hibernateTemplate.save(patientBookingDetailsObj);
	    	

	    	return null;
	    	
	   
	    }
	    
	    
}
