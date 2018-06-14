package com.zhang.modules.map.entity;

import com.zhang.modules.common.entity.BaseEntity;

import java.io.Serializable;

/**
 * @Auther: Administrator
 * @Date: 2018/6/10 0010 18:33
 * @Description:
 */
public class WebMap extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 8256634557837883091L;
    /**
     * 经度
     */
    private String pLng;
    /**
     * 纬度
     */
    private String pLat;
    /**
     * 车辆详情id
     */
    private String sharingId;

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

    public String getSharingId() {
        return sharingId;
    }

    public void setSharingId(String sharingId) {
        this.sharingId = sharingId;
    }
}
