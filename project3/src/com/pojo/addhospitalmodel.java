package com.pojo;

public class addhospitalmodel {
	
	
	private int id,status;
    private String uniqueid;
    private String name,address1,address2,state,city,pin,certifications,success,achievements,optional;
    addhospitalmodel(){}
    
    
	public addhospitalmodel(int id, int status, String uniqueid, String name, String address1, String address2,
			String state, String city, String pin, String certifications, String success, String achievements,
			String optional) {
		super();
		this.id = id;
		this.status = status;
		this.uniqueid = uniqueid;
		this.name = name;
		this.address1 = address1;
		this.address2 = address2;
		this.state = state;
		this.city = city;
		this.pin = pin;
		this.certifications = certifications;
		this.success = success;
		this.achievements = achievements;
		this.optional = optional;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getUniqueid() {
		return uniqueid;
	}
	public void setUniqueid(String uniqueid) {
		this.uniqueid = uniqueid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getCertifications() {
		return certifications;
	}
	public void setCertifications(String certifications) {
		this.certifications = certifications;
	}
	public String getSuccess() {
		return success;
	}
	public void setSuccess(String success) {
		this.success = success;
	}
	public String getAchievements() {
		return achievements;
	}
	public void setAchievements(String achievements) {
		this.achievements = achievements;
	}
	public String getOptional() {
		return optional;
	}
	public void setOptional(String optional) {
		this.optional = optional;
	}

    
   
    
	

	
}
