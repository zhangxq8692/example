package com.zhang.modules.common.constants;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 16:51
 * @Description: 常量类
 */
public class Constant {
    /**
     * 删除
     */
    @JsonIgnore
    public final Byte UPDATE_DELETE_DELETE = '1';
    /**
     * 正常
     */
    @JsonIgnore
    public final Byte UPDATE_DELETE_NORMA = '0';
}
