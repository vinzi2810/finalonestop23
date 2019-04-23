package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.DoctorDetails;
import com.pojo.HospitalDetails;
import com.pojo.PatientDetails;
import com.pojo.addhospitalmodel;
import com.pojo.patientBookingDetails;
import com.service.AppointmentService;
import com.service.AuthService;

@Controller
@RequestMapping(value = "/MyData")



public class MyRESTController {
	
	
	 @Autowired
	    private AppointmentService appointmentService; 

	
	@RequestMapping(value="/slotselect", method = RequestMethod.POST)
    //public @ResponseBody String getMyDoctors(@RequestParam String hos,@RequestParam String doc, @RequestParam String date)
    public @ResponseBody List<String> getMySlot(@RequestParam String hos,@RequestParam String doc, @RequestParam String date,HttpSession session)

             {
    System.out.println("In the controller.../time..POSTfinalllyyyyy");
    

    
    String hospitalID = (String) session.getAttribute("HospitalID");
    String doctorID = (String) session.getAttribute("DoctorID");
    
    
    
    System.out.println("Hospital ID in the session "+hospitalID);
    System.out.println("Doctor ID in the session "+doctorID);
    
    date.replaceAll("\\?", "");
    session.setAttribute("AppointmentDate", date);
    
    System.out.println("Entered date is "+date);
    List<String> slotList = appointmentService.getSlots(hospitalID, doctorID, date);
    
           
         return slotList;
    
    	
       // return new MyData(1234, "REST GET Call !!!");
    }
	
	

	
	@RequestMapping(value="/doctorSelection", method = RequestMethod.POST)
    public @ResponseBody List<DoctorDetails> getMyRowData(@RequestParam String hosname,@RequestParam String locality, @RequestParam String city,HttpSession session) {
		
				
				
				List<DoctorDetails> DoctorDataList = appointmentService.getDoctors(hosname,locality,city);
				
				            String hospitalID = DoctorDataList.get(0).getHospitalid();
				            System.out.println("Hospital id to be stored in the session.."+hospitalID);
				            session.setAttribute("HospitalID", hospitalID);
							System.out.println("its in rowselection controller");							
							
							return DoctorDataList;
							
	}
	
	
	@RequestMapping(value="/doctorId", method = RequestMethod.POST)
    public @ResponseBody void  setDoctorId(@RequestParam String doctorid,@RequestParam String doctorname, HttpSession session) {
		
		 session.setAttribute("DoctorID", doctorid);
		 session.setAttribute("DoctorName", doctorname);
		 
			System.out.println("its in rowselection controller");	
			System.out.println("Doctor name set in session "+doctorname);
			String DoctorID = (String) session.getAttribute("DoctorID");
			System.out.println(DoctorID);
			
	 						
	}
	
	
	@RequestMapping(value="/hospitalNameSelection", method = RequestMethod.GET)
    public @ResponseBody List<addhospitalmodel> getMyDatanew(@RequestParam String name)
             {
    System.out.println("In the controller.../hospitalNameSelection..GET");
 
    List<addhospitalmodel> HospitalDataList = appointmentService.getHospitalName(name);
         
          
         return HospitalDataList;
    
    	
       // return new MyData(1234, "REST GET Call !!!");
    }
 
	@RequestMapping(value="/{time}", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<String> getMyData(
            @PathVariable long time) {
    System.out.println("In the controller.../time..GET");
    
         List<String> lst = new ArrayList<String>();
         lst.add("Charan");
         lst.add("lavanya tripathi...");
         
         return lst;
    
    	
       // return new MyData(1234, "REST GET Call !!!");
    }
    
    
   /* @RequestMapping(value="/new", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<String> getMyDatanew(
            @PathVariable long time) {
    System.out.println("In the controller.../time..GET");
    
         List<String> lst3 = new ArrayList<String>();
         lst3.add("Charasdfsdfxsdfn");
         lst3.add("lavanya trxgfxcfgipathi...");
         
         
         
         return lst3;
    
    	
       // return new MyData(1234, "REST GET Call !!!");
    }*/
 
    
    
    
    
    
    @RequestMapping(method=RequestMethod.PUT, produces = "application/json")
    public @ResponseBody MyData putMyData() {
 
        System.out.println("In the PUT Controller..");
    	return new MyData(System.currentTimeMillis(),"Vineetha, the intelligence of intelligent!!");
    }
    
    
   /* @RequestMapping(value ="/a", method = RequestMethod.PUT, produces = "application/json")
    public @ResponseBody String putMyDatanew() {
 
        System.out.println("In the PUT Controller..");
        String lst = "Vineetha new!";
    	return lst;
    	
    }*/
    
    
    
    
    
    
    
    
 
    @RequestMapping(method = RequestMethod.POST, produces = "application/json")
    public @ResponseBody MyData postMyData() {
 
 return new MyData(System.currentTimeMillis(),"Vineetha, the great artist!!");
 
 
    }
 
    
    
    
    
    
    @RequestMapping(value="/{time}", method = RequestMethod.DELETE, produces = "application/json")
    public @ResponseBody MyData deleteMyData(
            @PathVariable long time) {
    	
        return new MyData(time, "Vineetha");
    }
}