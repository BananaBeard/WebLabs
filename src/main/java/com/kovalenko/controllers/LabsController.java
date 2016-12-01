package com.kovalenko.controllers;

import com.kovalenko.sorting.SortingMethods;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

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

    @RequestMapping("lab5")
    public ModelAndView lab5start(){
        return new ModelAndView("lab5");
    }

    @RequestMapping("lab6")
    public ModelAndView lab6start(){
        return new ModelAndView("lab6");
    }

    @RequestMapping(value = "/sort", method = RequestMethod.GET)

    public @ResponseBody String Sort(@RequestParam String method, @RequestParam String list) {
        int mtd = Integer.parseInt(method.substring(0,1));
        String msg;
        int[] arr = Arrays.stream(list.split(" ")).map(String::trim).mapToInt(Integer::parseInt).toArray();

        if (mtd == 1 ) msg = SortingMethods.selectionSort(arr);
        else if (mtd == 2 ) msg = SortingMethods.insertionSort(arr);
        else if (mtd == 3 ) msg = SortingMethods.bogoSort(arr);
        else if (mtd == 4 ) msg = SortingMethods.bubbleSort(arr);
        else if (mtd == 5 ) msg = SortingMethods.quickSort(arr, 0, arr.length-1);
        else msg = SortingMethods.bucketSort(arr, SortingMethods.getMax(arr));

        return msg;
    }
}
