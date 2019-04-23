package com.pojo;

public class patientBookingDetails {

	private int id;
    private String hospital_id;
    private String UserID;
    
	private String patientname;
    private String doctorid;
    private String doctor_name;
    private String disease;
    
    private String prescriptionprovided;
    private String status;
    private String date;
    private String slots;
    private String speciality;
    public patientBookingDetails(int id, String hospital_unique_id, String userID, String patientname, String doctorid,
			String doctor_name, String disease, String prescriptionprovided, String status, String date, String slots,
			String speciality) {
		super();
		this.id = id;
		this.hospital_id = hospital_unique_id;
		UserID = userID;
		this.patientname = patientname;
		this.doctorid = doctorid;
		this.doctor_name = doctor_name;
		this.disease = disease;
		this.prescriptionprovided = prescriptionprovided;
		this.status = status;
		this.date = date;
		this.slots = slots;
		this.speciality = speciality;
	}
    
    
	public patientBookingDetails() {
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getHospital_id() {
		return hospital_id;
	}


	public void setHospital_id(String hospital_id) {
		this.hospital_id = hospital_id;
	}


	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getDoctorid() {
		return doctorid;
	}
	public void setDoctorid(String doctorid) {
		this.doctorid = doctorid;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getPrescriptionprovided() {
		return prescriptionprovided;
	}
	public void setPrescriptionprovided(String prescriptionprovided) {
		this.prescriptionprovided = prescriptionprovided;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSlots() {
		return slots;
	}
	public void setSlots(String slots) {
		this.slots = slots;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}


}
