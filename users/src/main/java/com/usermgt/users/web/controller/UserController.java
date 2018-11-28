package com.usermgt.users.web.controller;

import com.usermgt.users.configurations.ApplicationPropertiesConfiguration;
import com.usermgt.users.dao.UserDao;
import com.usermgt.users.model.User;
import com.usermgt.users.web.exceptions.UserNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.CrossOrigin;
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

    //Users
    @CrossOrigin
    @GetMapping(value="/Users")
    public List<User> getUsers() {
        logger.info("NbMaxUsers: "+applicationPropertiesConfiguration.getNbMaxUsers());
        Pageable limit = PageRequest.of(0, applicationPropertiesConfiguration.getNbMaxUsers());
        Page<User> userListPage = this.userDao.findAll(limit);

        List<User> userListToDisplay = userListPage.getContent();

        if(userListToDisplay.isEmpty()) {
            logger.warn("getUsers - No user found !");
            throw new UserNotFoundException("There is no user.");
        }
        return userListToDisplay;
    }

}
