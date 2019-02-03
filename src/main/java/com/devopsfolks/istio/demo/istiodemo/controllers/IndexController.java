package com.devopsfolks.istio.demo.istiodemo.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {

    private static final Logger LOG = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    private String version;

    @GetMapping("/hello")
    public String index() {
        LOG.info("Printing Hello World message");
        return "Hello from version " + version;
    }
}
