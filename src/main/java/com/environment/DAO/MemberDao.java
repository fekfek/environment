package com.environment.DAO;

import java.util.List;

import com.environment.model.Member;

public interface MemberDao {
	
	public void addMember(Member member);

	public List<Member> showMembers();

	public boolean validate(String email, String password);

	public Member update(int id);

	public void delete(int id);

	public Member getMember(int id);

}
