package com.service;

import com.pojo.User;
import com.pojo.UserForm;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UserServiceImpl implements UserService {

    // 使用静态集合变量users模拟数据库
    private static ArrayList<User> users = new ArrayList<User>();


    public boolean login(UserForm user) {
        if ("zhangsan".equals(user.getUname())
                && "123456".equals(user.getUpass())) {
            return true;
        }
        return false;
    }
    public boolean register(UserForm user) {
        if ("zhangsan".equals(user.getUname())
                && "123456".equals(user.getUpass())) {
            return true;
        }
        return false;
    }

    @Override
    public boolean addUser(User u) {
        if (!"IT民工".equals(u.getCarrer())) { // 不允许添加IT民工
            users.add(u);
            return true;
        }
        return false;
    }

    @Override
    public ArrayList<User> getUsers() {
        return users;
    }
}