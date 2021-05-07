package cn.test.service.impl;

import cn.test.service.UserService;
import cn.test.mapper.UserMapper;
import cn.test.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
    @Override
    public Integer userLogin(User user) {
        return userMapper.userLogin(user);
    }
}