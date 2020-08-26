package org.cqupt.DeFiServerProject.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.cqupt.DeFiServerProject.entity.User;

@Mapper
public interface UserMapper {
	List<User> findAll();
}
