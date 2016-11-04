package com.kovalenko.labs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LabsController {

    @RequestMapping("/lab2")
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
}
