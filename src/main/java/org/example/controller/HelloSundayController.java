package org.example.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = {"/biz/v1/sunday"})
public class HelloSundayController {

    @GetMapping("/app")
    public String app(){
        return "hello-sunday";
    }
}
