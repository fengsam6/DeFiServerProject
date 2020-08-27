package org.cqupt.DeFiServerProject.service;

import org.cqupt.DeFiServerProject.entity.Mark;
import org.cqupt.DeFiServerProject.entity.User;

import java.util.List;

public interface MarkService {

	 List<Mark> findAll();

	 void save(Mark mark);
}
