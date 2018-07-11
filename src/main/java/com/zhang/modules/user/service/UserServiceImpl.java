package com.zhang.modules.user.service;

import com.zhang.modules.common.service.BaseServiceImpl;
import com.zhang.modules.user.dao.UserDao;
import com.zhang.modules.user.entity.UserInfo;
import org.springframework.stereotype.Service;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 17:05
 * @Description:
 */
@Service
public class UserServiceImpl extends BaseServiceImpl<UserInfo,UserDao> implements UserService{
}
