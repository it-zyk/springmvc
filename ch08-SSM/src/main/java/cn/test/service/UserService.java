package cn.test.service;

import cn.test.pojo.MyUser;

import java.util.List;

public interface UserService {

    public List<MyUser> selectUserByUname(MyUser user);
}