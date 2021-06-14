package com.pg.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pg.entity.Resident;
import com.pg.helper.Util;
import com.pg.service.ResidentService;


@Controller
public class ResidentController {

	private static final Logger log = LoggerFactory.getLogger(ResidentController.class);

	@Autowired
	private ResidentService residentService;

	@RequestMapping("/home")
	public String home() {
		log.info("entered /home controller...");
		return "index";
	}


	
	
	@RequestMapping("/register")
	public ModelAndView registerPageOpen() {
		log.info("entered /register...");
		ModelAndView mv = new ModelAndView();
		mv.addObject("resident", new Resident());
		mv.setViewName("register");
		return mv;
	}

	@RequestMapping("/register_resident")
	public ModelAndView registrationComplete(Resident resident,
			@RequestParam("resident_picture") CommonsMultipartFile file,
			@RequestParam("resident_id_proof") CommonsMultipartFile secondFile, HttpServletRequest request) {
		log.info("Entered /register_resident");
		
		if (file != null) {
			Util.saveFiles(file, request);
			resident.setFileName(file.getOriginalFilename());
		}
		if (secondFile != null) {
			Util.saveFiles(secondFile, request);
			resident.setSecondFileName(secondFile.getOriginalFilename());

		}
		resident.setActive(true);
		Resident savedResident = residentService.save(resident);

		ModelAndView mv = new ModelAndView();
		mv.addObject("resident_picture", "images/" + savedResident.getFileName());
		mv.addObject("resident_id", "images/" + savedResident.getSecondFileName());
		log.info(savedResident.getFileName());
		mv.addObject("full_name", savedResident.getFullName());
		mv.addObject("advance_amount", savedResident.getAdvanceAmount());
		mv.addObject("rent_amount", savedResident.getRentAmount());
		mv.addObject("room_number", savedResident.getRoomNumber());

		mv.setViewName("registration_success");
		return mv;

	}

	@RequestMapping("/get_all_residents")
	public ModelAndView showResidents() {
		log.info("entered get_all_residents...");
		List<Resident> residentList = residentService.getAllResidents();
		for (Resident re : residentList) {
			log.info(re.getFullName());
			log.info("images/" + re.getFileName());
			re.setFileName("images/" + re.getFileName());
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("residentList", residentList);
		mv.setViewName("show_residents");
		return mv;
	}

	@RequestMapping("/update_resident")
	public ModelAndView updateResident(@RequestParam("id") String id) {
		log.info(id);
		Resident r = residentService.getResidentById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("resident", r);
		mv.setViewName("update_one_resident");
		return mv;
	}

	@RequestMapping("/update_changes_resident")
	public ModelAndView updateChangesInResident(Resident resident,
			@RequestParam("resident_picture") CommonsMultipartFile file,
			@RequestParam("resident_id_proof") CommonsMultipartFile secondFile, 
			HttpServletRequest request) {
		log.info("this resident must be updated:::"+resident.getId());
		
		if (file.getSize() !=0) {
			log.info("size="+file.getSize());
			log.info("filename="+file.getOriginalFilename());
			Util.saveFiles(file, request);
			resident.setFileName(file.getOriginalFilename());
		}
		if (secondFile.getSize() !=0) {
			Util.saveFiles(secondFile, request);
			resident.setSecondFileName(secondFile.getOriginalFilename());

		}
		
		Resident savedResident = residentService.update(resident);

		//rendering
		ModelAndView mv = new ModelAndView();
		mv.addObject("resident_picture", "images/" + savedResident.getFileName());
		mv.addObject("resident_id", "images/" + savedResident.getSecondFileName());
		//log.info(savedResident.getFileName());
		mv.addObject("full_name", savedResident.getFullName());
		mv.addObject("advance_amount", savedResident.getAdvanceAmount());
		mv.addObject("rent_amount", savedResident.getRentAmount());
		mv.addObject("room_number", savedResident.getRoomNumber());

		mv.setViewName("update_success");
		return mv;
	}
	@RequestMapping("/delete_resident")
	public ModelAndView deleteResident(@RequestParam("id") String id) {
		
		
		residentService.delete(id);
		

		log.info("entered delete_resident...");
		List<Resident> residentList = residentService.getAllResidents();
		for (Resident re : residentList) {
			
			re.setFileName("images/" + re.getFileName());
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("residentList", residentList);
		mv.setViewName("show_residents");
		return mv;
	
		
	}

	@RequestMapping("/delete_ex_resident")
	public ModelAndView deleteExResident(@RequestParam("id") String id) {
		
		
		residentService.delete(id);
		

		log.info("entered get_ex-all_residents...");
		List<Resident> residentList = residentService.getAllExResidents();
		for (Resident re : residentList) {
			
			re.setFileName("images/" + re.getFileName());
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("residentList", residentList);
		mv.setViewName("show_ex_residents");
		return mv;
	
		
	}
	
	@RequestMapping("/resident_exit")
	public ModelAndView exitResident(@RequestParam("id") String id ) {
		
		residentService.deactivateResident(id);
		

		log.info("entered get_all_residents...");
		List<Resident> residentList = residentService.getAllResidents();
		for (Resident re : residentList) {
			
			re.setFileName("images/" + re.getFileName());
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("residentList", residentList);
		mv.setViewName("show_residents");
		return mv;
	
		
	}
	
	@RequestMapping("/get_all_ex_residents")
	public ModelAndView getExResidents() {

		log.info("entered get_all_ex-residents...");
		List<Resident> residentList = residentService.getAllExResidents();
		for (Resident re : residentList) {
			
			re.setFileName("images/" + re.getFileName());
			
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("residentList", residentList);
		mv.setViewName("show_ex_residents");
		return mv;
	
	}
	
	@RequestMapping("/resident_re_enter")
	public ModelAndView reEntryResident(@RequestParam("id") String id ) {
		
		residentService.reactivate(id);
		

		log.info("entered resident_re_enter");
		List<Resident> residentList = residentService.getAllExResidents();
		for (Resident re : residentList) {
			
			re.setFileName("images/" + re.getFileName());
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("residentList", residentList);
		mv.setViewName("show_ex_residents");
		return mv;
	
		
	}
}
