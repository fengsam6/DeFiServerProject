package org.cqupt.DeFiServerProject.service.impl;

import java.util.List;

import org.cqupt.DeFiServerProject.entity.User;
import org.cqupt.DeFiServerProject.mapper.UserMapper;
import org.cqupt.DeFiServerProject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceimpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }

}
