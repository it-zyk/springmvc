package com.supreme.controller;

import com.pojo.GoodsModelb;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormatterController {
    @RequestMapping("/formatter")
    public String myConverter(GoodsModelb gm, Model model) {
        model.addAttribute("goods", gm);
        return "showGoodsb";
    }
}