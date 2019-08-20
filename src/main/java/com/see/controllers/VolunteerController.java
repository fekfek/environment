package com.see.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.see.model.Volunteer;
import com.see.service.VolunteerService;

@Transactional
@Controller
public class VolunteerController {
	@Autowired
	private VolunteerService volunteerService;
	
	//shows the form to fill info about volunteer
	@RequestMapping(value="/newVolunteer", method=RequestMethod.GET)
		public String volunteer(Model md) {
			md.addAttribute("anyname", new Volunteer() );
			return "newVolunteer";
	}
	//to submit the filled info about applicant 
	@RequestMapping(value = "/submitvolunteer", method = RequestMethod.POST)
    public String doApply(Model model, Volunteer volunteer) {
            volunteerService.createVolunteer(volunteer);
        	return "redirect:/showVolunteer";
//         return "redirect:/showvolunteers";	
 

    }
	//to show all applications
	@RequestMapping(value = "/showvolunteers", method = RequestMethod.GET)	
    public String showVolunteers(Model model) {        
        List<Volunteer> volunteer = volunteerService.getAllVolunteer();
        model.addAttribute("myVolunteers", volunteer );
        return "showVolunteers";	
    }
	
	///////////////////
	//to show a single volunteer for confirmation after registration 
	@GetMapping("/showVolunteer")
	public String showVolunteer(Model model) {
//		Volunteer volunteer = volunteerService.getVolunteer(id);
//		model.addAttribute("volunteer", volunteer);
		return "registered";
	}	
	/////////////////
	
	//to remove an applicant
	@RequestMapping(value = "/volunteer/{volunteer.id}/delete")	
    public String doDelete(@PathVariable("volunteer.id") int id) {
        
			volunteerService.deleteVolunteer(id);
            return "redirect:/showvolunteers";	
        }
	//to update an applicant
	@RequestMapping(value = "/volunteer/{volunteer.id}/update", method = RequestMethod.GET)
	public String doUpdate(@PathVariable("volunteer.id") int id, Model model) {
		
		model.addAttribute("updateMe",volunteerService.updateVolunteer(id));
		return "updateVolunteer";
	}
	
	


}
