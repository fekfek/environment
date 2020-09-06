package com.see.service;

import java.util.List;

import com.see.model.Contribute;

public interface ContributeService {

	public void addContribute(Contribute contribute);

	public List<Contribute> showContributions();

}
