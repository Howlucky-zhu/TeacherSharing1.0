package com.example.second.controller;

import com.example.second.entity.User;
import com.example.second.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/user")
@CrossOrigin
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/findAllUsers")
    public List<User> findAllUsers() {
        return this.userService.findAllUsers();
    }

    @PostMapping("/deleteUser")
    public void deleteUserById(@RequestParam Integer id) {
        this.userService.deleteUserById(id);
    }

    @PostMapping("/addUser")
    public void addUser(@RequestBody User user) {
        this.userService.addUser(user);
    }

    @PostMapping("/updateUser")
    public void updateUser(@RequestBody User user) {
        this.userService.updateUser(user);
    }

    @PostMapping("/register")
    @CrossOrigin
    public Map<String, Object> register(@RequestParam String username,
                                        @RequestParam String passwd,
                                        @RequestParam String radio) {
        return this.userService.register(username, passwd, radio);
    }

 }
