package com.zhang.modules.common.controller;

import com.zhang.modules.common.entity.BaseEntity;
import com.zhang.modules.common.service.BaseService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * @Auther: Administrator
 * @Date: 2018/6/5 0005 14:38
 * @Description: 基本控制器
 */

public abstract class BaseController<T extends BaseEntity,S extends BaseService<T>> {

    /*
     * 基本service对象
     */
    @Autowired
    protected S service;

    @ModelAttribute
    public void get(T t, Model model) {
        if (t != null && StringUtils.isNotBlank(t.getId())) {
            model.addAttribute("entity", service.get(t));
        }
    }

    /**
     * 根据指定id获取数据
     *
     * @param t 实体参数
     * @return 实体类
     */
    @RequestMapping("/from")
    public String findById(@ModelAttribute("entity") T t,Model model) {
        model.addAttribute(getModelName(),t);
        return getModelName() + "/form";
    }

    /**
     * 获取数据列表
     *
     * @param model
     * @return 视图名
     */

    @RequestMapping("/list")
    public String list(Model model) {
        List<T> list = service.list();
        model.addAttribute("result", list);
        return getModelName() + "/list";
    }

    /**
     * 更新一条数据
     *
     * @param t 数据对象
     * @return 更新后的视图
     */
    @RequestMapping(value = "/update")
    public String update(@ModelAttribute(value = "entity") T t, RedirectAttributes model) {
        boolean succeed = service.update(t);
        if (succeed) {
            model.addFlashAttribute("msg", "更新成功");
        } else {
            model.addFlashAttribute("msg", "更新失败");
        }
        return "redirect:" + getModelName() + "/list";
    }

    /**
     * 删除一条数据
     *
     * @param t 数据对象
     * @return 删除后回显视图
     */
    @RequestMapping("/delete")
    public String delete(T t, RedirectAttributes model) {
        boolean succeed = service.delete(t);
        if (succeed) {
            model.addFlashAttribute("msg", "删除成功");
        } else {
            model.addFlashAttribute("msg", "删除失败");
        }
        return "redirect:" + getModelName() + "/list";
    }

    /**
     * 添加一条数据
     *
     * @param t 数据对象
     * @return 添加后回显视图
     */
    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String insert(T t, RedirectAttributes model) {
        boolean succeed = service.insert(t);
        if (succeed) {
            model.addFlashAttribute("msg", "添加成功");
        } else {
            model.addFlashAttribute("msg", "添加失败");
        }
        return "redirect:" + getModelName() + "/list";
    }

    /**
     * 获取当前控制器类RequestMapping value
     *
     * @return 模块路径
     */
    protected String getModelName() {
        RequestMapping annotation = this.getClass().getAnnotation(RequestMapping.class);
        return annotation.value()[0];
    }
}