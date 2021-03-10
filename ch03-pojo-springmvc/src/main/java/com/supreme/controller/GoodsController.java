package com.supreme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoodsController {
    //同添加商品的页面
    @RequestMapping("/toGood")
    public String toGoods(){
        return "addGoods";
    }

    //添加页面的按钮
    @RequestMapping("/addGoods")
    public String Goods(String goodname,Double goodprice,int goodnumber){
        double a = goodnumber * goodprice;
        System.out.println(a );
        return "main";
    }
    @RequestMapping("/input")
    public String inPut(){
        return "input";
    }
}
