package com.kendoui.spring.controllers.rangebarcharts;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("dataviz-range_bar_charts-home-controller")
@RequestMapping(value="/range-bar-charts/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {
        return "/range-bar-charts/index";
    }
}
