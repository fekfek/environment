package com.see.DAO;

import java.util.List;

import com.see.model.Contribute;

public interface ContributeDao {

	public void addContribute(Contribute contribute);

	public List<Contribute> showContributions();

}
