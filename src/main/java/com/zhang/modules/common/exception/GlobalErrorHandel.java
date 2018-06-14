package com.zhang.modules.common.exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * @Auther: Administrator
 * @Date: 2018/6/7 0007 21:41
 * @Description:
 */

public class GlobalErrorHandel implements HandlerExceptionResolver {
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        String referer = request.getHeader("Referer");
        Map<String,String> model = new HashMap<String, String>();
        model.put("firstPage",referer);
        return new ModelAndView("error/404",model);
    }
}
