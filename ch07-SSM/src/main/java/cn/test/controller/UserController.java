package cn.test.controller;

import cn.test.service.UserService;
import cn.test.pojo.User;
import com.alibaba.fastjson.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/userController")
public class UserController {
    @Resource
    private UserService userService;
    @RequestMapping("/userLogin")
    public String userLogin(User user) {
        System.out.println(user);
        Integer result = userService.userLogin(user);
        if(result==1)
        {
            return "success";
        }
        else {
            return "error";
        }
    }

    @RequestMapping("/testAjax")
    @ResponseBody
    public String testAjax(User user) {
        System.out.println(user);
        Map<String, User> map = new HashMap<String, User>();
        map.put("data", user);
        return JSONArray.toJSONString(map);
    }
}