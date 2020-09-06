package com.see.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.see.model.Contact;

@Repository
public class ContactDaoImpl implements ContactDoa {
	
	@Autowired
	private SessionFactory sf;
	
	Session session;

	@Override
	public void addContact(Contact contact) {
		
		session = sf.getCurrentSession();
		session.saveOrUpdate(contact);

	}

	@Override
	public List<Contact> showContacts() {
		session = sf.getCurrentSession();
		List<Contact> contacts = session.createQuery("from Contact" , Contact.class).getResultList();
		return contacts;
	}

}
