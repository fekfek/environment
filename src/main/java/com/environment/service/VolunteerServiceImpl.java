package com.environment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.environment.DAO.VolunteerDAO;
import com.environment.model.Volunteer;


@Service
public class VolunteerServiceImpl implements VolunteerService{
	
	@Autowired
	private VolunteerDAO volunteerDAO;

	@Override
	@Transactional
	public void createVolunteer(Volunteer volunteer) {
		volunteerDAO.createVolunteer(volunteer);

	}

	@Override
	public List<Volunteer> getAllVolunteer() {
		
		return volunteerDAO.getAllVolunteer();
	}

	@Override
	@Transactional
	public void deleteVolunteer(int id) {
		volunteerDAO.deleteVolunteer(id);

	}

	@Override
	@Transactional
	public Volunteer updateVolunteer(int id) {
		Volunteer volunteer=volunteerDAO.updateVolunteer(id);
		return volunteer;

	}

	@Override
	public Volunteer getVolunteer(int id) {
		Volunteer volunteer = volunteerDAO.getVolunteer(id);
		return volunteer;
	}

	/*@Override
	@Transactional
	public Volunteer getVolunteerId(int id) {
		
		return volunteerDAO.getVolunteerId(id);
	}*/


}
