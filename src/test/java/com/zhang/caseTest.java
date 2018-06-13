package com.zhang;

import com.zhang.modules.common.service.BaseService;
import com.zhang.modules.user.dao.UserDao;
import com.zhang.modules.user.entity.User;
import com.zhang.modules.user.service.UserService;
import org.junit.Test;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 17:18
 * @Description:
 */
public class caseTest {
    @Test
    public void uuid(){
        BaseService<User,UserDao> baseService = new UserService();
        baseService.setDao(new UserDao());
    }
    class BaseEntity{}
    class BaseDao<T extends BaseEntity>{}

    public abstract class BaseService<T extends BaseEntity,D extends BaseDao<T>>{
        private BaseDao dao;
        public void setDao(D dao) {
            this.dao = dao;
        }
    }

    class User<T> extends BaseEntity{}
    class UserDao extends BaseDao<User>{}
    class UserService extends BaseService<User,UserDao>{
    }

    class Map extends BaseEntity{}
    class MapDao extends BaseDao<Map>{}
    class MapService extends BaseService<Map,MapDao>{}
}

