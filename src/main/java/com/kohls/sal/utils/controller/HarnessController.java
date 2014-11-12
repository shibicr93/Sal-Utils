package com.kohls.sal.utils.controller;

import com.kohls.sal.utils.models.AddItemsToCart;
import com.kohls.sal.utils.models.RegisteredCheckoutRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import java.lang.annotation.Annotation;

@Controller
@RequestMapping("/test")
public class HarnessController  implements Controller {


    @RequestMapping(value = "/addItem", method = RequestMethod.GET)
    public ModelAndView addItemToCart() {
        RegisteredCheckoutRequest registeredCheckoutRequest = new RegisteredCheckoutRequest();
        return new ModelAndView("registeredCheckoutRequest", "registeredCheckoutRequest", registeredCheckoutRequest);
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