package com.supreme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class ModelAttributeController {

    @RequestMapping("/add")
    public String add() {
        return "success";
    }
    @RequestMapping("/update")
    public String update() {
        return "updateSuccess";
    }
    @RequestMapping("/delete")
    public String delete() {
        return "deleteSuccess";
    }
}
