package com.environment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.environment.DAO.MemberDao;
import com.environment.model.Member;

@Service
@Transactional
public class MemberSerImpl implements MemberService {
	
	@Autowired
	private MemberDao memberdao;

	@Override
	public void addMember(Member member) {
		
		memberdao.addMember(member);

	}

	@Override
	public List<Member> showMembers() {
		
		return memberdao.showMembers();
	}

	@Override
	public boolean validate(String email, String password) {
		
		return memberdao.validate(email, password);
		
	}

	@Override
	public Member update(int id) {
		return memberdao.update(id);
		
	}

	@Override
	public void delete(int id) {
		memberdao.delete(id);
		
	}

	@Override
	public Member getMember(int id) {
		return memberdao.getMember(id);
	}

}
