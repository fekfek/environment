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
import org.springframework.web.servlet.ModelAndView;

import com.see.model.Contribute;
import com.see.service.ContributeService;

@Controller
public class ContributeController {
	
	@Autowired
	ContributeService contributeService;
	
	@RequestMapping(value={"/contribute"} , method=RequestMethod.GET)
	public String contribute() {
		return "contribute";
	}
	
	@PostMapping("/registerContribution")
	public String register(@Validated Contribute contribute , BindingResult result) {
		if(result.hasErrors()) {
			return "redirect:/contribute";
		}
		else {
			contributeService.addContribute(contribute);
			return "contributeRegistered";
		}
	}
	
	@GetMapping("/showContributions")
	public String showContributions(Model model) {
		List<Contribute> contributions = contributeService.showContributions();
		model.addAttribute("contributions",contributions);
		return "showContributions";
	}

}
