package com.zhang.modules.common.service;

import com.zhang.modules.common.dao.BaseDao;
import com.zhang.modules.common.entity.BaseEntity;
import com.zhang.modules.common.util.RandomUUID;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 17:05
 * @Description:
 */

public abstract class BaseServiceImpl<T extends BaseEntity, D extends BaseDao<T>> implements BaseService<T> {
    @Autowired
    private D dao;

    /**
     * 获取指定数据
     *
     * @param t 指定数据条件参数
     * @return 数据实体
     */
    @Transactional(readOnly = true)
    public T get(T t) {
        return dao.findById(t);
    }

    /**
     * 获取数据列表
     *
     * @return 数据列表
     */
    @Transactional(readOnly = true)
    public List<T> list() {
        return dao.findAll();
    }

    /**
     * 更新数据
     *
     * @param t 数据对象
     * @return 是否成功
     */
    @Transactional
    public boolean update(T t) {
        if (!StringUtils.isNotBlank(t.getId())) {
            completeData(t);
            return insert(t);
        }
        t.setUpdateDate(new Date());
        return dao.update(t) > 0;
    }

    /**
     * 添加一条数据
     *
     * @param t 数据对象
     * @return 是否成功
     */
    public boolean insert(T t) {
        return dao.insert(t) > 0;
    }

    /**
     * 删除一条数据
     *
     * @param t 数据对象
     * @return 是否成功
     */
    public boolean delete(T t) {
        return dao.delete(t) > 0;
    }

    private void completeData(T t) {
        t.setId(RandomUUID.newUUID());
        t.setCreateDate(new Date());
        t.setDeleteFlag(t.UPDATE_DELETE_NORMA);
    }
}
