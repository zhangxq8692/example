package com.zhang.modules.common.dao;

import java.util.List;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 17:50
 * @Description:
 */
public interface BaseDao<T>{
    /**
     * 获取指定数据
     *
     * @param t 指定数据条件参数
     * @return 数据实体
     */
    public T findById(T t);

    /**
     * 获取数据列表
     *
     * @return 数据列表
     */
    List<T> findAll();

    /**
     * 更新一条数据
     *
     * @param t 数据对象
     * @return 是否成功
     */
    int update(T t);

    /**
     * 删除一条数据
     *
     * @param t 数据对象
     * @return 是否成功
     */
    int delete(T t);

    /**
     * 添加一条数据
     *
     * @param t 数据对象
     * @return 是否成功
     */
    int insert(T t);
}
