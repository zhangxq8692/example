package com.zhang.modules.car.service;

import com.zhang.modules.car.dao.CarDao;
import com.zhang.modules.car.entity.Car;
import com.zhang.modules.common.service.BaseServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 17:05
 * @Description:
 */
@Service
public class CarServiceImpl extends BaseServiceImpl<Car,CarDao> implements CarService {

}
