package com.kohls.sal.utils.util;

import com.kohls.sal.utils.models.RegisteredCheckoutRequest;

/**
 * Created by Raju on 11/19/2014.
 */
 public class BillingShippingUtils {

    public static RegisteredCheckoutRequest checkAddress(RegisteredCheckoutRequest registeredCheckoutRequest){
        if(registeredCheckoutRequest.getBillingShippingRequest().isShippingAddressSameAsBillingAddress()){
            registeredCheckoutRequest.getBillingShippingRequest().setShippingContact(registeredCheckoutRequest.getBillingShippingRequest().getBillingContact());

        }

    return registeredCheckoutRequest;
    }

}
