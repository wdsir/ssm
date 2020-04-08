package com.wd.service;

import com.wd.dao.UserMapper;
import com.wd.dto.UserDto;
import com.wd.pojo.User;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Administrator
 * @create 2020年01月24日 0024~00:22
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> show() {

        return userMapper.show();
    }


    @Override
    public void addUser(UserDto dto) {
        User pojo = new User();
        //方式一
        //pojo.setName(dto.getName());

        //方式二 对象之间复制(从源到目标)，类型要保持一致
        BeanUtils.copyProperties(dto, pojo);
        userMapper.insert(pojo);
    }

    @Override
    public void delUser(Integer id) {
        userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void updateUser(UserDto dto) {
        User pojo = new User();
        BeanUtils.copyProperties(dto, pojo);
        userMapper.updateByPrimaryKey(pojo);
    }

    @Override
    public UserDto findById(Integer id) {
        User byId = userMapper.selectByPrimaryKey(id);
        UserDto dto = new UserDto();
        BeanUtils.copyProperties(byId, dto);
        return dto;
    }


}
