package com.kohls.sal.utils.controller;

import com.kohls.sal.utils.models.AddUpdateCartItemsRequest;
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


    @RequestMapping(value = "/billingShippingRequest", method = RequestMethod.GET)
    public ModelAndView billingShipping() {
        RegisteredCheckoutRequest registeredCheckoutRequest = new RegisteredCheckoutRequest();

        return new ModelAndView("billingShipping", "registeredCheckoutRequest", registeredCheckoutRequest);
      //
        }
    @RequestMapping(value = "/addItem", method = RequestMethod.GET)
    public ModelAndView addItemToCart() {
        RegisteredCheckoutRequest registeredCheckoutRequest = new RegisteredCheckoutRequest();
        AddUpdateCartItemsRequest addUpdateCartItemsRequest = new AddUpdateCartItemsRequest();
        return new ModelAndView("addUpdateItems", "addUpdateCartItemsRequest", addUpdateCartItemsRequest);
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
        System.out.println("hello");
        model.addAttribute(registeredCheckoutRequest);
        return "TestPayment";
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