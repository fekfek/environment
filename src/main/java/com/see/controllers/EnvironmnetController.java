package com.see.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("/contribute")
	public String contribute() {
		return "contribute";
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	@RequestMapping("/seemanager")
	public String seemanager() {
		return "seemanager";
	}
	@RequestMapping("/signin")
	public String signin() {
		return "signin";
	}
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	
	
	
}
