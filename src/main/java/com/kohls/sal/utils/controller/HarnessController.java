package com.kohls.sal.utils.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/test")
public class HarnessController implements Controller{


    @RequestMapping(value = "/addItem", method = RequestMethod.GET)
    public ModelAndView addItemToCart() {
        AddItemsToCart addItemsToCart = new AddItemsToCart();
        return new ModelAndView("index", "addItemsToCart", addItemsToCart);
        }

    @RequestMapping(value = "/addItem", method = RequestMethod.POST)
	public String addCartItem(@ModelAttribute AddItemsToCart addItemsToCart,ModelMap model) {
            model.addAttribute(addItemsToCart.getAddItemsToCart());
            return "result";
	}

    @Override
    public String value() {
        return null;
    }

    @Override
    public Class<? extends Annotation> annotationType() {
        return null;
    }
}