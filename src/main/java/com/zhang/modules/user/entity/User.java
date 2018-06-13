package com.zhang.modules.user.entity;

import com.zhang.modules.common.entity.BaseEntity;

import java.io.Serializable;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 14:49
 * @Description: 用户实体类
 */
public class User extends BaseEntity implements Serializable {
    private String name;
    private int age;
    private String sex;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
}
