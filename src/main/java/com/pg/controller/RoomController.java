package com.pg.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pg.entity.Room;
import com.pg.service.RoomService;

@Controller
public class RoomController {

	private static final Logger log = LoggerFactory.getLogger(ResidentController.class);

	@Autowired
	private RoomService roomService;
	
	@GetMapping("/add_room_load")
	public ModelAndView addRoom() {
		log.info("/add_room_load called");
		ModelAndView mv=new ModelAndView();
		mv.addObject("room", new Room());
		mv.setViewName("add_room");
		return mv;
	}
	
	@PostMapping("/add_room_submit")
	public ModelAndView submitAddRoom( Room room) {
		
		roomService.addRoom(room);
		
		List<Room> roomList=roomService.getAllRooms();
		ModelAndView mv=new ModelAndView();
		mv.addObject("roomList", roomList);
		mv.setViewName("show_rooms");
		return mv;
	}
	
	@GetMapping("/show_room_load")
	public ModelAndView showRoomLoad() {
		
		List<Room> roomList=roomService.getAllRooms();
		ModelAndView mv=new ModelAndView();
		mv.addObject("roomList", roomList);
		mv.setViewName("show_rooms");
		return mv;
	}
	
	@GetMapping("/update_room_load")
	public ModelAndView updateRoomLoad(@RequestParam("id") String id) {
		
		Room room = roomService.getRoomById(id);
		ModelAndView mv=new ModelAndView();
		mv.addObject("room", room);
		mv.setViewName("add_room");
		return mv;
	}
	
	@GetMapping("/delete_room")
	public ModelAndView deleteRoom(@RequestParam("id") String id) {
		roomService.deleteById(id);
		List<Room> roomList=roomService.getAllRooms();
		ModelAndView mv=new ModelAndView();
		mv.addObject("roomList", roomList);
		mv.setViewName("show_rooms");
		return mv;
		
	}
}
