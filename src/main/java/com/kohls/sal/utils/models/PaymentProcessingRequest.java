package com.kohls.sal.utils.models;

/**
 * Created by Shermarajan on 11/10/2014.
 */
public class PaymentProcessingRequest {
    private static final long serialVersionUID = 1368255054758147212L;

     User user;
    ShoppingCart shoppingCart;

    protected Boolean isRegistered;

    public User getUser() {
        return user;
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }

    public Boolean getIsRegistered() {
        return isRegistered;
    }

    public void setIsRegistered(Boolean isRegistered) {
        this.isRegistered = isRegistered;
    }
}
