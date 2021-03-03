package com.supreme.controller;

import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
public class ModelAttributeController {

    @RequestMapping("/add")
    public String add() {
        return "addSuccess";
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
