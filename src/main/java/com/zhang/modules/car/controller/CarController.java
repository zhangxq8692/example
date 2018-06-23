package com.zhang.modules.car.controller;

import com.zhang.modules.car.entity.Car;
import com.zhang.modules.car.service.CarService;
import com.zhang.modules.common.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Auther: Administrator
 * @Date: 2018/6/10 0010 18:30
 * @Description:
 */
@Controller
@RequestMapping("car")
public class CarController extends BaseController<Car,CarService> {

}
