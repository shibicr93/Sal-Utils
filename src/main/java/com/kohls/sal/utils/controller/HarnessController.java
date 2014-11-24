package com.kohls.sal.utils.controller;

import com.kohls.sal.utils.models.RegisteredCheckoutRequest;
import com.kohls.sal.utils.util.BillingShippingUtils;
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


    @RequestMapping(value = "/request", method = RequestMethod.GET)
    public ModelAndView request() {
        RegisteredCheckoutRequest registeredCheckoutRequest = new RegisteredCheckoutRequest();
        return new ModelAndView("index", "registeredCheckoutRequest", registeredCheckoutRequest);
    }

    @RequestMapping(value = "/response", method = RequestMethod.POST)
    public String response(@ModelAttribute RegisteredCheckoutRequest registeredCheckoutRequest,ModelMap model) {
        BillingShippingUtils.checkAddress(registeredCheckoutRequest);
        model.addAttribute(registeredCheckoutRequest);
        return "result";
    }


    @RequestMapping(value = "/billingShippingRequest", method = RequestMethod.GET)
    public ModelAndView billingShipping() {
        RegisteredCheckoutRequest registeredCheckoutRequest = new RegisteredCheckoutRequest();
        return new ModelAndView("billingShipping", "registeredCheckoutRequest", registeredCheckoutRequest);
        }

    @RequestMapping(value = "/billingShippingResponse", method = RequestMethod.POST)
       public String addCartItem(@ModelAttribute RegisteredCheckoutRequest registeredCheckoutRequest,ModelMap model) {
        BillingShippingUtils.checkAddress(registeredCheckoutRequest);
        model.addAttribute(registeredCheckoutRequest);
        return "displayTesting";
    }


    @RequestMapping(value = "/submitPaymentRequest",method = RequestMethod.GET)
    public ModelAndView submitPayment()
    {
        RegisteredCheckoutRequest registeredCheckoutRequest=new RegisteredCheckoutRequest();
        return new ModelAndView("submitPayment","registeredCheckoutRequest",registeredCheckoutRequest);
    }
    @RequestMapping(value = "/submitPaymentResponse",method = RequestMethod.POST)
    public String sendPayment(@ModelAttribute RegisteredCheckoutRequest registeredCheckoutRequest,ModelMap model)
    {
        model.addAttribute(registeredCheckoutRequest);
        return "TestPayment";
    }
    @RequestMapping(value = "/addUpdateItemsRequest", method = RequestMethod.GET)
    public ModelAndView addItemToCart() {
        RegisteredCheckoutRequest registeredCheckoutRequest = new RegisteredCheckoutRequest();
        return new ModelAndView("addUpdateItems", "registeredCheckoutRequest", registeredCheckoutRequest);
    }
    @RequestMapping(value = "/addUpdateItemsResponse", method = RequestMethod.POST)
    public String addUpdateCartItemsRequest(@ModelAttribute RegisteredCheckoutRequest registeredCheckoutRequest,ModelMap model) {
        model.addAttribute(registeredCheckoutRequest);
        return "displayAddUpdate";

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