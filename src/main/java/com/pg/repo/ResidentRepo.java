package com.pg.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pg.entity.Resident;

@Repository
public interface ResidentRepo extends JpaRepository<Resident, Integer>{

	public List<Resident> findByActive(Boolean active);
}
