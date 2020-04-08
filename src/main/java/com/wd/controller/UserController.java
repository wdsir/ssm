package com.wd.controller;

import com.wd.dto.UserDto;
import com.wd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * ￥￥  GitHub  ￥￥
 * @author Administrator
 * @create 2020年01月24日 0024~00:42
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    //展示页面
    @RequestMapping("/show")
    public String show(Map<String, Object> map) {
        map.put("boss", userService.show());
        return "show";
    }

    @RequestMapping("/insert")
    public String insert(Integer id, Model model) {
        if (id != null) {
            model.addAttribute("user", userService.findById(id));
        }
        return "add";
    }

    @RequestMapping("/add")
    public String addUser(UserDto dto) {
        if (dto.getId() == null) {
            userService.addUser(dto);
        } else {
            userService.updateUser(dto);
        }
        return "redirect:/show";
    }

    @RequestMapping("/del")
    public String delUser(Integer id) {
        userService.delUser(id);
        return "redirect:/show";
    }

}
