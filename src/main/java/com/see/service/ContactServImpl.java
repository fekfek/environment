package com.see.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.see.DAO.ContactDoa;
import com.see.model.Contact;

@Service
@Transactional
public class ContactServImpl implements ContactService {
	
	@Autowired
	private ContactDoa contactDao;

	@Override
	public void addContact(Contact contact) {
		contactDao.addContact(contact);

	}

	@Override
	public List<Contact> showContacts() {
		return contactDao.showContacts();
	}
	
	

}
