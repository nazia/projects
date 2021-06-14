package com.pg.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Room {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	private String roomNumber;

	private String type;

	private Integer advanceAmount;
	private Integer rentAmount;

	private String description;

	private String status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
