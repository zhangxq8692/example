package com.zhang.modules.user.controller;

import com.zhang.modules.common.controller.AbstractBaseController;
import com.zhang.modules.user.entity.User;
import com.zhang.modules.user.entity.UserInfo;
import com.zhang.modules.user.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 14:38
 * @Description: 用户控制器
 */
@Controller
@RequestMapping("user")  //不要加/
public class UserController extends AbstractBaseController<UserInfo,UserService> {
    @RequestMapping(value = "/login",method ={RequestMethod.POST,RequestMethod.GET})
    public String login(@RequestParam(value = "userName",required = false) String userName,
                        @RequestParam(value = "password",required = false) String password){
        if (!StringUtils.isNotBlank(userName) & !StringUtils.isNotBlank(password)){
            return getModelName() + "/login";
        }
        return "index";
    }

    @RequestMapping("/register")
    public String findById(User user, RedirectAttributes redirectAttributes) {
        if (!StringUtils.isNotBlank(user.getUserName()) & !StringUtils.isNotBlank(user.getPassword())){
            return getModelName() + "/register";
        }
        if(service.update(user.getUserInfo())){
            redirectAttributes.addFlashAttribute("msg","注册成功");
        }else {
            redirectAttributes.addFlashAttribute("msg","注册失败");
        }
        return "redirect:/" + getModelName() +"/login";
    }

    @Override
    @RequestMapping(value = "/update")
    public String update(UserInfo userInfo, RedirectAttributes model) {
        return super.update(userInfo, model);
    }

    @Override
    @RequestMapping("/delete")
    public String delete(UserInfo userInfo, RedirectAttributes model) {
        return super.delete(userInfo, model);
    }
}