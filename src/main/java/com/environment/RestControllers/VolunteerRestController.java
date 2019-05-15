package com.environment.RestControllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.environment.model.Volunteer;
import com.environment.service.VolunteerService;

@RestController
public class VolunteerRestController {
	
	@Autowired
	private VolunteerService vservice;
	
	@PostMapping("/addVolunteer")
	public Volunteer addVolunteer(@RequestBody Volunteer volunteer) {
		vservice.createVolunteer(volunteer);
		return volunteer;
	}
	
	@GetMapping("/getVolunteer/{id}")
	public Volunteer getVolunteer(@PathVariable int id) {
		return vservice.getVolunteer(id);	
	}
	
	@GetMapping("/getAllVolunteers")
	public List<Volunteer> getAllVolunteer(){
		return vservice.getAllVolunteer();
	}
	
	@PutMapping("/updateVolunteer")
	public Volunteer updateVolunteer(@RequestBody Volunteer volunteer) {
		vservice.createVolunteer(volunteer);
		return volunteer;
	}
	
	@DeleteMapping("/deleteVolunteer/{id}")
	public void deleteVolunteer(@PathVariable int id) {
		vservice.deleteVolunteer(id);
	}
	
	

}
