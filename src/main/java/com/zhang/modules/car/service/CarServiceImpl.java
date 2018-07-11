package com.zhang.modules.car.service;

import com.zhang.modules.car.dao.CarDao;
import com.zhang.modules.car.entity.Car;
import com.zhang.modules.common.service.BaseServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 17:05
 * @Description:
 */
@Service
@Transactional
public class CarServiceImpl extends BaseServiceImpl<Car,CarDao> implements CarService {

}
