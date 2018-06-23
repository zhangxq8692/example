package com.zhang.modules.common.util;

import java.util.UUID;

/**
 * @Auther: Administrator
 * @Date: 2018/6/6 0006 11:17
 * @Description:
 */
public class RandomUUID {
    /**
     * 创建新的数据ID
     * @return ID
     */
    public synchronized static String newUUID(){
        UUID uuid = UUID.randomUUID();
        return uuid.toString().replaceAll("-","");
    }
}
