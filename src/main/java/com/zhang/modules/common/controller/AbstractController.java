package com.zhang.modules.common.controller;

import com.zhang.modules.common.entity.BaseEntity;
import com.zhang.modules.common.service.BaseService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * @Auther: xtiwx
 * @Date: 2018/07/02 10:42
 * @Description:
 */
public class AbstractController<T extends BaseEntity,S extends BaseService<T>> extends AbstractBaseController<T,S> {
    @Override
    @RequestMapping("/from")
    public String findById(T t, Model model) {
        return super.findById(t, model);
    }

    @Override
    @RequestMapping("/list")
    public String list(Model model) {
        return super.list(model);
    }

    @Override
    @RequestMapping(value = "/update")
    public String update(T t, RedirectAttributes model) {
        return super.update(t, model);
    }

    @Override
    @RequestMapping("/delete")
    public String delete(T t, RedirectAttributes model) {
        return super.delete(t, model);
    }

}
