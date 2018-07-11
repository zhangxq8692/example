package com.zhang.modules.car.controller;

import com.zhang.modules.car.entity.Car;
import com.zhang.modules.car.service.CarService;
import com.zhang.modules.common.controller.AbstractController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Auther: Administrator
 * @Date: 2018/6/10 0010 18:30
 * @Description:
 */
@Controller
@RequestMapping("car")
public class CarController extends AbstractController<Car,CarService> {

    /**
     * 地图列表信息
     * @return
     */
    @ResponseBody
    @RequestMapping("/pints")
    public List<Car> pints() {
        return service.list();
    }

    /**
     * 详情信息
     * @param car
     * @param model
     * @return
     */
    @RequestMapping("/detail")
    public String getDetail(Car car, Model model){
        Car result = service.get(car);
        model.addAttribute("car", result);
        return getModelName() +"/detail";
    }
}
