package com.kohls.sal.utils.controller;

import com.kohls.sal.utils.models.AddItemsToCart;
import com.kohls.sal.utils.models.RegisteredCheckoutRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.lang.annotation.Annotation;

@Controller
@RequestMapping("/test")
public class HarnessController  implements Controller {


    @RequestMapping(value = "/addItem", method = RequestMethod.GET)
    public ModelAndView addItemToCart() {
        RegisteredCheckoutRequest registeredCheckoutRequest = new RegisteredCheckoutRequest();
        return new ModelAndView("index", "registeredCheckoutRequest", registeredCheckoutRequest);//
        }

    @RequestMapping(value = "/addItem", method = RequestMethod.POST)
       public ModelAndView addCartItem(RegisteredCheckoutRequest registeredCheckoutRequest) {

        return new ModelAndView("result","registeredCheckoutRequest",registeredCheckoutRequest);
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