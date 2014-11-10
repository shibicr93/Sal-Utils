package com.kohls.sal.utils.models;

/**
 * Created by Shibi on 10-11-2014.
 */
public class RegisteredCheckoutRequest {

    private AddUpdateCartItemsRequest addUpdateCartItemsRequest;
    private BillingShippingRequest billingShippingRequest;

    public AddUpdateCartItemsRequest getAddUpdateCartItemsRequest() {
        return addUpdateCartItemsRequest;
    }

    public void setAddUpdateCartItemsRequest(AddUpdateCartItemsRequest addUpdateCartItemsRequest) {
        this.addUpdateCartItemsRequest = addUpdateCartItemsRequest;
    }

    public BillingShippingRequest getBillingShippingRequest() {
        return billingShippingRequest;
    }

    public void setBillingShippingRequest(BillingShippingRequest billingShippingRequest) {
        this.billingShippingRequest = billingShippingRequest;
    }
}
