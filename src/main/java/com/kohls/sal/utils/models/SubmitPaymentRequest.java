package com.kohls.sal.utils.models;

/**
 * Created by Shermarajan on 11/10/2014.
 */
public class SubmitPaymentRequest {


    boolean isRegistered;
    boolean expeditedCheckout = false;
    ShoppingCart shoppingCart;
    User user;
    PromoCode promoCode;
    CreditCard creditCard;
    boolean failfast;

    public boolean isRegistered() {
        return isRegistered;
    }

    public void setRegistered(boolean isRegistered) {
        this.isRegistered = isRegistered;
    }

    public boolean isExpeditedCheckout() {
        return expeditedCheckout;
    }

    public void setExpeditedCheckout(boolean expeditedCheckout) {
        this.expeditedCheckout = expeditedCheckout;
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }

    public void setShoppingCart(ShoppingCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public PromoCode getPromoCode() {
        return promoCode;
    }

    public void setPromoCode(PromoCode promoCode) {
        this.promoCode = promoCode;
    }

    public CreditCard getCreditCard() {
        return creditCard;
    }

    public void setCreditCard(CreditCard creditCard) {
        this.creditCard = creditCard;
    }

    public boolean isFailfast() {
        return failfast;
    }

    public void setFailfast(boolean failfast) {
        this.failfast = failfast;
    }
}


