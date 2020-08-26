package org.cqupt.DeFiServerProject.controller;

import java.util.List;

import org.cqupt.DeFiServerProject.entity.User;
import org.cqupt.DeFiServerProject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 
 * @author Lupe
 * 数据库连接实例    参考：https://www.jianshu.com/p/541874714907
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAll")
    public List<User> findAll(){
        return userService.findAll();
    }

}
