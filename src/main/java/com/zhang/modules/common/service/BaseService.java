package com.zhang.modules.common.service;

import com.zhang.modules.common.entity.BaseEntity;

import java.util.List;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 17:05
 * @Description:
 */
public interface BaseService<T extends BaseEntity> {
    /**
     * 获取指定数据
     *
     * @param t 指定数据条件参数
     * @return 数据实体
     */
    T get(T t);

    /**
     * 获取数据列表
     *
     * @return 数据列表
     */
    List<T> list();

    /**
     * 更新一条数据
     *
     * @param t 数据对象
     * @return 是否成功
     */
    boolean update(T t);

    /**
     * 删除一条数据
     *
     * @param t 数据对象
     * @return 是否成功
     */
    boolean delete(T t);

    /**
     * 添加一条数据
     *
     * @param t 数据对象
     * @return 是否成功
     */
    boolean insert(T t);
}
