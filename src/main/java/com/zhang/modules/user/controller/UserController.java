package com.zhang.modules.user.controller;

import com.zhang.modules.common.controller.BaseController;
import com.zhang.modules.user.entity.User;
import com.zhang.modules.user.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 14:38
 * @Description: 用户控制器
 */
@Controller
@RequestMapping("user")  //不要加/
public class UserController extends BaseController<User,UserService>{

}