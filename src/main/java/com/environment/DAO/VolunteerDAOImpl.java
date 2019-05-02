package com.environment.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.environment.model.Volunteer;

@Repository
public class VolunteerDAOImpl implements VolunteerDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	Session session;
	
	@Override
	public void createVolunteer(Volunteer volunteer) {
		session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(volunteer);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Volunteer> getAllVolunteer() {
		session=sessionFactory.getCurrentSession();
		List<Volunteer> volunteer=session.createQuery("From Volunteer").getResultList();
		return volunteer;
	}

	@Override
	public void deleteVolunteer(int id) {
		session=sessionFactory.getCurrentSession();
		Volunteer volunteer=session.load(Volunteer.class, id);
		if(volunteer != null) {
			session.delete(volunteer);
		}
	}

	@Override
	public Volunteer updateVolunteer(int id) {
		session=sessionFactory.getCurrentSession();
		Volunteer volunteer=session.get(Volunteer.class, id);
		if(volunteer !=null) {
			session.update(volunteer);
		}
		return volunteer;
	}

	/*@Override
	public Volunteer updateVolunteer(int id) {
		session=sessionFactory.getCurrentSession();
		Volunteer volunteer=session.get(Volunteer.class, id);
		return volunteer;
	}*/

}
