package com.zhang.modules.map.controller;

import com.zhang.modules.common.controller.BaseController;
import com.zhang.modules.map.entity.WebMap;
import com.zhang.modules.map.service.WebMapService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Auther: Administrator
 * @Date: 2018/6/10 0010 18:30
 * @Description:
 */
@Controller
@RequestMapping("map")
public class WebMapController extends BaseController<WebMap,WebMapService> {

    @RequestMapping("/map")
    public String map(){
        return getModelPath() + "/map";
    }
}
