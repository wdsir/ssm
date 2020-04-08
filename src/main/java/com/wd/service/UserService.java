package com.wd.service;


import com.wd.dto.UserDto;
import com.wd.pojo.User;

import java.util.List;

/**
 * @author Administrator
 * @create 2020年01月24日 0024~00:10
 */

public interface UserService {

    public void addUser(UserDto userDto);

    public void delUser(Integer id);

    public void updateUser(UserDto userDto);

    public UserDto findById(Integer id);

    public List<User> show();
}
