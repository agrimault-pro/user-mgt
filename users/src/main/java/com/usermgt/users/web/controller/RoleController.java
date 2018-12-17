package com.usermgt.users.web.controller;

import com.usermgt.users.configurations.ApplicationPropertiesConfiguration;
import com.usermgt.users.dao.RoleDao;
import com.usermgt.users.model.Role;
import com.usermgt.users.web.exceptions.RoleNotFoundException;
import com.usermgt.users.web.exceptions.UserNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RoleController {

    Logger logger = LoggerFactory.getLogger(this.getClass());

    private final RoleDao roleDao;
    private final ApplicationPropertiesConfiguration applicationPropertiesConfiguration;

    @Autowired
    public RoleController(RoleDao roleDao, ApplicationPropertiesConfiguration applicationPropertiesConfiguration) {
        this.roleDao = roleDao;
        this.applicationPropertiesConfiguration = applicationPropertiesConfiguration;
    }

    //Roles
    @CrossOrigin
    @GetMapping(value="/Roles")
    public List<Role> getRoles() {

        List<Role> roleList =  this.roleDao.findAll();

        if(roleList.isEmpty()) {
            logger.warn("getRoles - No role found !");
            throw new RoleNotFoundException("There is no role.");
        }

        return roleList;
    }
}
