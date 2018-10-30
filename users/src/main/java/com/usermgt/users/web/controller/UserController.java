package com.usermgt.users.web.controller;

import com.usermgt.users.configurations.ApplicationPropertiesConfiguration;
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

    Logger logger = LoggerFactory.getLogger(this.getClass());

    private final UserDao userDao;
    private final ApplicationPropertiesConfiguration applicationPropertiesConfiguration;

    @Autowired
    public UserController(UserDao userDao, ApplicationPropertiesConfiguration applicationPropertiesConfiguration) {
        this.userDao = userDao;
        this.applicationPropertiesConfiguration = applicationPropertiesConfiguration;
    }

    @GetMapping(value="/Users")
    public List<User> getUsers() {
        List<User> users = userDao.findAll();

        if(users.isEmpty()) {
            logger.warn("getUsers - No user found !");
            throw new UserNotFoundException("There is no user.");
        }

        //Manage the maximum of users to be displayed
        List<User> limitedUsers = null;
        if(users.size()>applicationPropertiesConfiguration.getNbMaxUsers()) {
            limitedUsers = users.subList(0, applicationPropertiesConfiguration.getNbMaxUsers());
        }
        logger.info("getUsers - User list found - size = "+users.size()
                +" - Max size allowed is = "+applicationPropertiesConfiguration.getNbMaxUsers());

        return limitedUsers;
    }
}
