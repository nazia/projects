package com.pg.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="resident")
public class Resident {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	private String fullName;
	private String mobileNumber;
	private Integer advanceAmount;
	private Integer rentAmount;
	private String tcSubmitted;
	private String inductionComplete;
	private String roomNumber;
	private String maritalStatus;
	private String address;
	private String email;
	private String fileName;
	private String secondFileName;
	private boolean active;
	
	
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public Integer getAdvanceAmount() {
		return advanceAmount;
	}
	public void setAdvanceAmount(Integer advanceAmount) {
		this.advanceAmount = advanceAmount;
	}
	public Integer getRentAmount() {
		return rentAmount;
	}
	public void setRentAmount(Integer rentAmount) {
		this.rentAmount = rentAmount;
	}
	public String getTcSubmitted() {
		return tcSubmitted;
	}
	public void setTcSubmitted(String tcSubmitted) {
		this.tcSubmitted = tcSubmitted;
	}
	public String getInductionComplete() {
		return inductionComplete;
	}
	public void setInductionComplete(String inductionComplete) {
		this.inductionComplete = inductionComplete;
	}
	public String getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getSecondFileName() {
		return secondFileName;
	}
	public void setSecondFileName(String secondFileName) {
		this.secondFileName = secondFileName;
	}
	public Resident() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
