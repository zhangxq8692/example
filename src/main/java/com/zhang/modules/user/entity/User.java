package com.zhang.modules.user.entity;

import com.zhang.modules.common.entity.BaseEntity;

import java.io.Serializable;

/**
 * @Auther: xtiwx
 * @Date: 2018/07/01 13:51
 * @Description:
 */
public class User extends BaseEntity implements Serializable {
    /**
     * 用户名
     */
    private String userName;
    /**
     * 密码
     */
    private String password;

    /**
     * 用户信息
     */
    private UserInfo userInfo;

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
