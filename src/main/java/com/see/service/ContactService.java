package com.see.service;


import java.util.List;

import com.see.model.Contact;


public interface ContactService {
	
	public void addContact(Contact contact);
	
	public List<Contact> showContacts();

}
