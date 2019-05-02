package com.environment.service;

import java.util.List;

import com.environment.model.Volunteer;

public interface VolunteerService {
	
	public void createVolunteer(Volunteer volunteer);

	public List<Volunteer> getAllVolunteer();
	
	public void deleteVolunteer(int id);
	
	public Volunteer updateVolunteer(int id);
	
//	public Volunteer getVolunteerId(int id);

}
