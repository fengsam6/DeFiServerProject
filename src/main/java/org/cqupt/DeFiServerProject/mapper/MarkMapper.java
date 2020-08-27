package org.cqupt.DeFiServerProject.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.cqupt.DeFiServerProject.entity.Mark;

import java.util.List;

@Mapper
public interface MarkMapper {
	List<Mark> findAll();

	void insert(Mark mark);
}
