package com.usermgt.users.configurations;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties("my-config")
public class ApplicationPropertiesConfiguration {

    private int nbMaxUsers;

    public int getNbMaxUsers() {
        return nbMaxUsers;
    }

    public void setNbMaxUsers(int nbMaxUsers) {
        this.nbMaxUsers = nbMaxUsers;
    }
}
