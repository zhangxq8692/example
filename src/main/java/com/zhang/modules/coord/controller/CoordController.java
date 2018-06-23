package com.zhang.modules.coord.controller;

import com.zhang.modules.common.controller.BaseController;
import com.zhang.modules.coord.entity.Coord;
import com.zhang.modules.coord.service.CoordService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Auther: Administrator
 * @Date: 2018/6/10 0010 18:30
 * @Description:
 */
@Controller
@RequestMapping("coord")
public class CoordController extends BaseController<Coord,CoordService> {

    @RequestMapping("/map")
    public String map(){
        return getModelName() + "/map";
    }

    @ResponseBody
    @RequestMapping("/pints")
    public List<Coord> pints(Coord webMap) {
        return service.list();
    }
}
