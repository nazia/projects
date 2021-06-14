package com.pg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pg.entity.Room;
import com.pg.repo.RoomRepo;

@Service
public class RoomService {

	@Autowired
	private RoomRepo roomRepo;

	public void addRoom(Room room) {
		// TODO Auto-generated method stub
		
		roomRepo.save(room);
	}

	public List<Room> getAllRooms() {
		// TODO Auto-generated method stub
		return roomRepo.findAll();
	}

	public Room getRoomById(String sid) {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(sid);
		
		return roomRepo.findById(id).get();
	}

	public void deleteById(String sid) {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(sid);
		Room room=roomRepo.getById(id);
		roomRepo.delete(room);
		
	}
	
}
