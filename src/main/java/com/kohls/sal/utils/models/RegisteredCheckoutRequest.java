package com.kohls.sal.utils.models;

/**
 * Created by Shibi on 10-11-2014.
 */
public class RegisteredCheckoutRequest {

    private AddUpdateCartItemsRequest addUpdateCartItemsRequest;
    private BillingShippingRequest billingShippingRequest;
    private SubmitPaymentRequest submitPaymentRequest;


    public SubmitPaymentRequest getSubmitPaymentRequest() {
        return submitPaymentRequest;
    }

    public void setSubmitPaymentRequest(SubmitPaymentRequest submitPaymentRequest) {
        this.submitPaymentRequest = submitPaymentRequest;
    }

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
