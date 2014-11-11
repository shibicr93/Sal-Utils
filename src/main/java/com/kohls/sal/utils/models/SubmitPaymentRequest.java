package com.kohls.sal.utils.models;

/**
 * Created by Shermarajan on 11/10/2014.
 */
public class SubmitPaymentRequest {
    User user;
    ShoppingCart shoppingCart;

    protected Boolean isRegistered;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }

    public void setShoppingCart(ShoppingCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }

    public Boolean getIsRegistered() {
        return isRegistered;
    }

    public void setIsRegistered(Boolean isRegistered) {
        this.isRegistered = isRegistered;
    }
}


