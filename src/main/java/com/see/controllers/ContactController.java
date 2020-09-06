package com.see.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.see.model.Contact;
import com.see.service.ContactService;

@Controller
public class ContactController {
	
	@Autowired
	private ContactService contservice;
	
	@RequestMapping(value={"/contact"} , method=RequestMethod.GET)
	public String contact() {
		return "contact";
	}
	
	@PostMapping("/registerContact")
	public String register(@Validated Contact contact, BindingResult result) {
		if(result.hasErrors()) {
			return "redirect:/contact";
		}
		else {
			contservice.addContact(contact);
			return "contactRegistered";
		}
	}
	
	@GetMapping("/showcontacts")
	public String showContacts(Model model) {
		List<Contact> contacts = contservice.showContacts();
		model.addAttribute("contacts" , contacts);
		return "showContacts";
	}

}
