package com.supreme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController {
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    @RequestMapping("/json")
    public String indexjson(){
        return "json";
    }

    @RequestMapping("/input")
    public String input(){
        return "input";
    }

    @RequestMapping("/inputb")
    public String inputb(){
        return "inputb";
    }
}
