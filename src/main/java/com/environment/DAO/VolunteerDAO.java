package com.environment.DAO;

import java.util.List;

import com.environment.model.Volunteer;

public interface VolunteerDAO {
	
	public void createVolunteer(Volunteer volunteer);

	public List<Volunteer> getAllVolunteer();
	
	public void deleteVolunteer(int id);
	
	public Volunteer updateVolunteer(int id);

}
