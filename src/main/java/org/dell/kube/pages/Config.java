package org.dell.kube.pages;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix = "bean")
public class Config {

    private String message = "a message that can be changed live";

    public Config() {
    }

    public Config(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }
}
