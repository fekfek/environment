package com.environment.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.environment.model.Member;

@Repository
public class MemberDapImpl implements MemberDao {
	
	@Autowired
	private SessionFactory sf;
	
	Session session;

	@Override
	public void addMember(Member member) {
		session = sf.getCurrentSession();
		session.saveOrUpdate(member);

	}

	@Override
	public List<Member> showMembers() {
		session = sf.getCurrentSession();
		List<Member> members = session.createQuery("from Member",Member.class).getResultList();
		return members;
	}

	
	@Override
	@SuppressWarnings("deprecation")
	public boolean validate(String email, String password) {
		boolean valid = false;
		String sql = "from Member m where m.email=?1 and m.password=?2";
		session = sf.getCurrentSession();
		Query<Member> query = session.createQuery(sql, Member.class);
		query.setParameter(1,email);
		query.setParameter(2,password);
		List<Member> member = query.getResultList();
		if(member !=null && member.size()>0) {
			valid=true;
		}
			
		return valid;
		
		
	}

	@Override
	public Member update(int id) {
		session = sf.getCurrentSession();
		Member member = session.get(Member.class, id);
		return member;
	}

	@Override
	public void delete(int id) {
		session = sf.getCurrentSession();
		Member member = session.get(Member.class, id);
		if(member !=null)
			session.remove(member);
		
	}

	@Override
	public Member getMember(int id) {
		session = sf.getCurrentSession();
		Member member = session.get(Member.class, id);
		return member;
	}

}
