package com.kohls.sal.utils.controller;

import com.kohls.sal.utils.models.AddItemsToCart;
import com.kohls.sal.utils.models.BillingShippingRequest;
import com.kohls.sal.utils.models.RegisteredCheckoutRequest;
import com.kohls.sal.utils.util.BillingShippingUtils;
import com.thoughtworks.xstream.XStream;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import java.lang.annotation.Annotation;

import static com.kohls.sal.utils.util.BillingShippingUtils.checkAddress;

@Controller
@RequestMapping("/test")
public class HarnessController  implements Controller {


    @RequestMapping(value = "/billingShippingRequest", method = RequestMethod.GET)
    public ModelAndView addItemToCart() {
        RegisteredCheckoutRequest registeredCheckoutRequest = new RegisteredCheckoutRequest();

        return new ModelAndView("billingShipping", "registeredCheckoutRequest", registeredCheckoutRequest);
        }

    @RequestMapping(value = "/billingShippingResponse", method = RequestMethod.POST)
       public String addCartItem(@ModelAttribute RegisteredCheckoutRequest registeredCheckoutRequest,ModelMap model) {
        BillingShippingUtils.checkAddress(registeredCheckoutRequest);
        model.addAttribute(registeredCheckoutRequest);
        return "displayTesting";
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