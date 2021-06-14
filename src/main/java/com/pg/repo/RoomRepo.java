package com.pg.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pg.entity.Room;

@Repository
public interface RoomRepo extends JpaRepository<Room, Integer>{

	
}
