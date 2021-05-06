package com.supreme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavigateController {

    @RequestMapping("/oneFile")
    public String oneFile(){
        return "oneFile";
    }

    @RequestMapping("/multiFiles")
    public String multiFiles(){
        return "multiFiles";
    }

    @RequestMapping("/showdownfiles")
    public String showDownFiles(){
        return "showDownFiles";
    }

}
