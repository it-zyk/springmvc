package com.supreme.controller;

import com.pojo.Person;
import com.pojo.UserForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class TestController {
    /**
     * 接收页面请求的JSON参数，并返回JSON格式的结果
     */
    @RequestMapping("testJson")
    @ResponseBody
    public Person testJson(@RequestBody Person user) {
        // 打印接收的JSON格式数据
        System.out.println("pname=" + user.getPname() + ",password="
                + user.getPassword() + ",page" + user.getPage());
        ;
        // 返回JSON格式的响应
        return user;
    }

    @RequestMapping("/json")
    public String register(){
        return "json";
    }


}