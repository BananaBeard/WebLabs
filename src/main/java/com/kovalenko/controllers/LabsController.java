package com.kovalenko.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashSet;
import java.util.Set;

@Controller
public class LabsController {

    @RequestMapping(value = "/lab2")
    public ModelAndView lab2Start() {
        return new ModelAndView("lab2");
    }

    @RequestMapping("/lab3")
    public ModelAndView lab3Start() {
        return new ModelAndView("lab3");
    }

    @RequestMapping("/lab4")
    public ModelAndView lab4Start() {
        return new ModelAndView("lab4");
    }

    @RequestMapping("lab5")
    public ModelAndView lab5start(){
        return new ModelAndView("lab5");
    }

    @RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
    @ResponseBody
    public String ajaxTest() {
        Set<String> records = new HashSet<String>();
        String msg = "lalala";
        records.add("Record #1");
        records.add("Record #2");
        return msg;
    }
}
