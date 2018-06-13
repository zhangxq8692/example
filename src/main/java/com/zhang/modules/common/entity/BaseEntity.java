package com.zhang.modules.common.entity;


import com.zhang.modules.common.constants.Constant;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 14:49
 * @Description: 基本实体类
 */
public abstract class BaseEntity extends Constant implements Serializable {
    /**
     * UUID
     */
    private String id;

    /**
     * 创建时间
     */
    private Date createDate;

    /**
     * 更新时间
     */

    private Date updateDate;
    /**
     * 删除标志
     */
    private Character updateFlag;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Character getUpdateFlag() {
        return updateFlag;
    }

    public void setUpdateFlag(Character updateFlag) {
        this.updateFlag = updateFlag;
    }
}
