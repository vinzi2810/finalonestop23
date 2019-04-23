package com.pojo;

public class Appointment {
	
	private int appointment_id;
	private String patient_id;
	private String doctor_id;
	private String hospital_id;
	private String date_selected;
	private String slot_selected;
	
	
	public int getAppointment_id() {
		return appointment_id;
	}
	public void setAppointment_id(int appointment_id) {
		this.appointment_id = appointment_id;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public String getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(String doctor_id) {
		this.doctor_id = doctor_id;
	}
	public String getHospital_id() {
		return hospital_id;
	}
	public void setHospital_id(String hospital_id) {
		this.hospital_id = hospital_id;
	}
	public String getDate_selected() {
		return date_selected;
	}
	public void setDate_selected(String date_selected) {
		this.date_selected = date_selected;
	}
	public String getSlot_selected() {
		return slot_selected;
	}
	public void setSlot_selected(String slot_selected) {
		this.slot_selected = slot_selected;
	}
	
		

}
