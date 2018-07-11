package com.zhang.modules.user.entity;

import com.zhang.modules.common.entity.BaseEntity;

import java.io.Serializable;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 14:49
 * @Description: 用户详情实体类
 */
public class UserInfo extends BaseEntity implements Serializable {
    /**
     * 姓名
     */
    private String name;
    /**
     * 年龄
     */
    private int age;
    /**
     * 性别
     */
    private Byte sex;
    /**
     * 身份证
     */
    private String card;
    /**
     * 联系电话
     */
    private String phone;
    /**
     * 用户类型 0车主，1乘客
     */
    private Byte type;

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

    public Byte getSex() {
        return sex;
    }

    public void setSex(Byte sex) {
        this.sex = sex;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Byte getType() {
        return type;
    }

    public void setType(Byte type) {
        this.type = type;
    }
}
