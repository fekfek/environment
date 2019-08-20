package com.see.DAO;

import java.util.List;

import com.see.model.Volunteer;

public interface VolunteerDAO {
	
	public void createVolunteer(Volunteer volunteer);

	public List<Volunteer> getAllVolunteer();
	
	public void deleteVolunteer(int id);
	
	public Volunteer updateVolunteer(int id);

	public Volunteer getVolunteer(int id);

}
