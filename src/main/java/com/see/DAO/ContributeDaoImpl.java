package com.see.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.see.model.Contribute;

@Repository
public class ContributeDaoImpl implements ContributeDao {
	
	@Autowired
	private SessionFactory sf;
	
	Session session;

	@Override
	public void addContribute(Contribute contribute) {
		
		session = sf.getCurrentSession();
		session.saveOrUpdate(contribute);
		

	}

	@Override
	public List<Contribute> showContributions() {
		session = sf.getCurrentSession();
		List<Contribute> contributions = session.createQuery("from Contribute",Contribute.class).getResultList();
		
		return contributions;
	}

}
