package cn.test.controller;

import cn.test.dao.UserDao;
import cn.test.pojo.MyUser;
import cn.test.service.UserService;
import com.alibaba.fastjson.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    private UserDao userDao;
    @RequestMapping("/select")
    public String select(MyUser user, Model model) {
       // System.out.println(user);
        List<MyUser> list = userDao.selectUserByUname(user);
        model.addAttribute("userList", list);
        return  "userList";
    }

}