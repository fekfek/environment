package com.see.controllers;

import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.see.model.Member;
import com.see.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/signup")
		public String newMember(Model model) {
			Member member = new Member();
			model.addAttribute("newMember", member);
			return "signup";
		}
	
	@PostMapping("/registerMember")
	public String registered(@Validated Member member, BindingResult result) {
		if(result.hasErrors()) {
			return "redirect:/signup";
		}
		else {
			service.addMember(member);
			return "memberRegistered";
		}
		
	}
	
	@GetMapping("/showMembers")
	public String showMembers(Model model) {
		List<Member> members = service.showMembers();
		model.addAttribute("members", members);
		return "showMembers";
	}
	
	@GetMapping("/signin")
	public String signin() {
		return "signin";
	}
	
	@PostMapping("/verify")
	public String verify(Model model,@RequestParam String name, @RequestParam String email, @RequestParam String password) {
		String login;
		boolean isValid = service.validate(email,password);
		if(isValid) {
			model.addAttribute("member",name);
			login = "success";
		}
		else
			login = "error";
		
		return login;
	}
	
	@GetMapping("{id}/update")
	public String update(Model model,@PathVariable int id) {
		Member member = service.getMember(id);
		model.addAttribute("updateMember", member);
		return "updateMember";
	}
	
	@GetMapping("/{id}/delete")
	public String delete(@PathVariable int id) {
		service.delete(id);
		return "redirect:/showMembers";
	}
	
	
	
	

}
