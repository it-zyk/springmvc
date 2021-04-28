package com.supreme.controller;

import com.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    /**
     * 登录页面初始化
     */
    @RequestMapping("/toLogin")
    public String initLogin() {
        return "login";
    }
    /**
     * 处理登录功能
     */
    @RequestMapping("/login")
    public String login(User user, Model model, HttpSession session) {
        System.out.println(user.getUname());
        if ("zhangsan".equals(user.getUname())
                && "123456".equals(user.getUpwd())) {
            // 登录成功，将用户信息保存到session对象中
            session.setAttribute("user", user);
            // 重定向到主页面的跳转方法
            return "redirect:main";
        }
        model.addAttribute("msg", "用户名或密码错误，请重新登录！ ");
        return "login";
    }
    /**
     * 跳转到主页面
     */
    @RequestMapping("/main")
    public String toMain() {
        return "main";
    }
    /**
     * 退出登录
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        // 清除 session
        session.invalidate();
        return "login";
    }
}