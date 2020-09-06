package com.see.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.see.model.Contact;
import com.see.model.Member;

@Controller
public class EnvironmnetController {
	
	@RequestMapping("/bylaws")
	public String bylaws() {
		return "bylaws";
	}
	@RequestMapping("/profiles")
	public String profiles() {
		return "profile";
	}
	@RequestMapping("/reports")
	public String reports() {
		return "reports";
	}
	@RequestMapping("/presentations")
	public String presentations() {
		return "presentations";
	}
	@RequestMapping("/certificates")
	public String certificates() {
		return "certificates";
	}
	@RequestMapping("/awards")
	public String envConsProt() {
		return "awards";
	}
	@RequestMapping("/wfp2013")
	public String wfp2013() {
		return "wfp2013";
	}
	@RequestMapping("/cssp")
	public String cssp() {
		return "cssp";
	}
	@RequestMapping("/mid2103")
	public String mid2103() {
		return "mid2103";
	}
	@RequestMapping("/presentation2016")
	public String presentation2016() {
		return "presentation2016";
	}
	@RequestMapping("/projproposal2016")
	public String projproposal2016() {
		return "projproposal2016";
	}
	@RequestMapping("/annualreviewex")
	public String annualreviewex() {
		return "annualreviewex";
	}
	@RequestMapping("/award")
	public String award() {
		return "award";
	}
	@RequestMapping("/epacirtificate")
	public String epacirtificate() {
		return "epacirtificate";
	}
	@RequestMapping("/cerificateminesota")
	public String cerificateminesota() {
		return "cerificateminesota";
	}
	@RequestMapping("/certificateirs")
	public String certificateirs() {
		return "certificateirs";
	}
	@RequestMapping("/morePictures")
	public String morePictures() {
		return "morePictures";
	}
	
	
	@RequestMapping("/management")
	public String management() {
		return "management";
	}
	@RequestMapping("/organization")
	public String organization() {
		return "organization";
	}
	
	
	
	
	
}
