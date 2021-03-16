package com.service;

import com.pojo.User;
import com.pojo.UserForm;

import java.util.ArrayList;

public interface  UserService {
    boolean login(UserForm user);
    boolean register(UserForm user);
    boolean addUser(User u);
    ArrayList<User> getUsers();
}
