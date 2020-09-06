package com.see.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.see.DAO.ContributeDao;
import com.see.model.Contribute;

@Service
@Transactional
public class ContributeServImpl implements ContributeService {
	
	@Autowired
	private ContributeDao contributeDao;

	@Override
	public void addContribute(Contribute contribute) {
		
			contributeDao.addContribute(contribute);
	}

	@Override
	public List<Contribute> showContributions() {
		
		return contributeDao.showContributions();
	}

}
