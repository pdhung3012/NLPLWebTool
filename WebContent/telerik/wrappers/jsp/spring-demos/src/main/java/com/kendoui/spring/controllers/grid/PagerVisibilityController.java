package com.kendoui.spring.controllers.grid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.DataSourceRequest;
import com.kendoui.spring.models.DataSourceResult;
import com.kendoui.spring.models.OrderDao;

@Controller("pager-visibility-controller")
@RequestMapping(value="/grid/")
public class PagerVisibilityController {

    @RequestMapping(value = "/pager-visibility", method = RequestMethod.GET)
    public String index() {
        return "grid/pager-visibility";
    }
}