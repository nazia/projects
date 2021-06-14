package com.pg.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pg.entity.Resident;
import com.pg.repo.ResidentRepo;

@Service
public class ResidentService {

	@Autowired
	private ResidentRepo residentRepo;
	
	public Resident save(Resident resident) {
	
		return residentRepo.saveAndFlush(resident);
		
		
	}

	public Resident update(Resident resident) {
		//copy from model to entity
	Resident dbResident=residentRepo.getById(resident.getId());
		if(resident.getFileName()==null) {
			resident.setFileName(dbResident.getFileName());
			
		}
		if(resident.getSecondFileName()==null) {
			resident.setSecondFileName(dbResident.getSecondFileName());
		}
		return residentRepo.saveAndFlush(resident);
		
		
	}
	
	public List<Resident> getAllResidents() {
		// TODO Auto-generated method stub
		List<Resident> residentList=residentRepo.findByActive(true);

		return residentList;
	}

	public Resident getResidentById(String strId) {
		int id=Integer.parseInt(strId);
		Optional<Resident> re=residentRepo.findById(id);
		// TODO Auto-generated method stub
		return re.get();
	}

	public void delete(String sid) {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(sid);
		Resident r=residentRepo.getById(id);
		residentRepo.delete(r);
		
		
	}

	public void deactivateResident(String sid) {
		
		int id=Integer.parseInt(sid);
		Resident r=residentRepo.getById(id);
		r.setActive(false);
		residentRepo.save(r);
		
	}

	public List<Resident> getAllExResidents() {

		List<Resident> residentList=residentRepo.findByActive(false);

		return residentList;
	}

	public void reactivate(String sid) {
		int id=Integer.parseInt(sid);
		Resident r=residentRepo.getById(id);
		r.setActive(true);
		residentRepo.save(r);
	}
}
