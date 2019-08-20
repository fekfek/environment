package com.see.RestControllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.see.model.Member;
import com.see.service.MemberService;

@RestController
public class MemberRestController {
	
	@Autowired
	private MemberService vservice;
	
	@PostMapping("/addMember")
	public Member addmember(@RequestBody Member member) {
		vservice.addMember(member);
		return member;
	}
	
	@GetMapping("/getAllMembers")
	public List<Member> members() {
		return vservice.showMembers();
		
	}
	
	@GetMapping("/getMember/{id}")
	public Member getMember(@PathVariable int id) {
		return vservice.getMember(id);
	}
	
	@PutMapping("/updateMember")
	public Member updateMember(@RequestBody Member member) {
		vservice.addMember(member);
		return member;
		
	}
	
	@DeleteMapping("/deleteMember/{id}")
	public void deleteMember(@PathVariable int id) {
		vservice.delete(id);

	}
	
	
	
	

}
