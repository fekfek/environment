package com.see.DAO;


import java.util.List;

import com.see.model.Contact;

public interface ContactDoa {
	
	public void addContact(Contact contact);

	public List<Contact> showContacts();

}
