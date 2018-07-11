package com.zhang.modules.car.entity;

import com.zhang.modules.common.entity.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: Administrator
 * @Date: 2018/6/10 0010 18:33
 * @Description:
 */
public class Car extends BaseEntity implements Serializable {

    private static final long serialVersionUID = -4527647567133376977L;
    /**
     * 发布人ID
     */
    private String userId;
    /**
     * 出发地
     */
    private String departAddr;
    /**
     * 目的地
     */
    private String destination;
    /**
     * 出发时间
     */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date departDate;
    /**
     * 最迟出发时间
     */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date latestDate;
    /**
     * 发布时间
     */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date announceDate;
    /**
     * 可坐人数
     */
    private Integer sumPerson;
    /**
     * 已有人数
     */
    private Integer existPerson;

    /**
     * 经度
     */
    private String pLng;
    /**
     * 纬度
     */
    private String pLat;
    /**
     * 备注
     */
    private String remark;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getDepartAddr() {
        return departAddr;
    }

    public void setDepartAddr(String departAddr) {
        this.departAddr = departAddr;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public Date getDepartDate() {
        return departDate;
    }

    public void setDepartDate(Date departDate) {
        this.departDate = departDate;
    }

    public Date getLatestDate() {
        return latestDate;
    }

    public void setLatestDate(Date latestDate) {
        this.latestDate = latestDate;
    }

    public Date getAnnounceDate() {
        return announceDate;
    }

    public void setAnnounceDate(Date announceDate) {
        if (announceDate==null){
            this.announceDate = new Date();
        }else {
            this.announceDate = announceDate;
        }
    }

    public Integer getSumPerson() {
        return sumPerson;
    }

    public void setSumPerson(Integer sumPerson) {
        this.sumPerson = sumPerson;
    }

    public Integer getExistPerson() {
        return existPerson;
    }

    public void setExistPerson(Integer existPerson) {
        this.existPerson = existPerson;
    }

    public String getpLng() {
        return pLng;
    }

    public void setpLng(String pLng) {
        this.pLng = pLng;
    }

    public String getpLat() {
        return pLat;
    }

    public void setpLat(String pLat) {
        this.pLat = pLat;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
