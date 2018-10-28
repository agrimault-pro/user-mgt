package com.usermgt.users.web.controller;

import com.usermgt.users.dao.UserDao;
import com.usermgt.users.model.User;
import com.usermgt.users.web.exceptions.UserNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    private final UserDao userDao;

    @Autowired
    public UserController(UserDao userDao) {
        this.userDao = userDao;
    }

    Logger logger = LoggerFactory.getLogger(this.getClass());

    @GetMapping(value="/Users")
    public List<User> getUsers() {
        List<User> users = userDao.findAll();

        if(users.isEmpty()) {
            logger.warn("getUsers - No user found !");
            throw new UserNotFoundException("There is no user.");
        }

        //TODO Manage the maximum of users to be displayed

        logger.info("getUsers - User list found - size = "+users.size());
        return users;
    }
}
