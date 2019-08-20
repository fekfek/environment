package com.see.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.see.DAO.VolunteerDAO;
import com.see.model.Volunteer;


@Service
@Transactional
public class VolunteerServiceImpl implements VolunteerService{
	
	@Autowired
	private VolunteerDAO volunteerDAO;

	@Override
	public void createVolunteer(Volunteer volunteer) {
		volunteerDAO.createVolunteer(volunteer);

	}

	@Override
	public List<Volunteer> getAllVolunteer() {
		return volunteerDAO.getAllVolunteer();
	}

	@Override
	public void deleteVolunteer(int id) {
		volunteerDAO.deleteVolunteer(id);

	}

	@Override
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
	public Volunteer getVolunteerId(int id) {
		return volunteerDAO.getVolunteerId(id);
	}*/


}
