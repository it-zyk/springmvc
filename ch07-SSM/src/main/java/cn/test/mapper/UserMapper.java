package cn.test.mapper;

import cn.test.pojo.User;

public interface UserMapper {
    /**
     * 用户登录
     *
     * @param user
     * @return
     */
    public Integer userLogin(User user);
}
