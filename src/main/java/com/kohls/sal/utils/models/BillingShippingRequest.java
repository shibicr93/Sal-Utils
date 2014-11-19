package com.kohls.sal.utils.models;

/**
 * Created by Shibi on 10-11-2014.
 */
public class BillingShippingRequest {

    private static final long serialVersionUID = 2879607272533421159L;
    private Contact billingContact;
    private Contact shippingContact;
    private User user;
    private boolean shippingAddressSameAsBillingAddress;
    private String shippingMethod;//dropdown
    private ShoppingCart shoppingCart;//no needed
    private ShippingOptions shippingOptions = new ShippingOptions();
    private boolean updateUser;
    private boolean expeditedCheckout = false;
    private boolean validateShippingMethod = false;

    public Contact getBillingContact() {
        return billingContact;
    }

    public void setBillingContact(Contact billingContact) {
        this.billingContact = billingContact;
    }

    public Contact getShippingContact() {
        return shippingContact;
    }

    public void setShippingContact(Contact shippingContact) {
        this.shippingContact = shippingContact;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isShippingAddressSameAsBillingAddress() {
        return shippingAddressSameAsBillingAddress;
    }

    public void setShippingAddressSameAsBillingAddress(boolean shippingAddressSameAsBillingAddress) {
        this.shippingAddressSameAsBillingAddress = shippingAddressSameAsBillingAddress;
    }

    public String getShippingMethod() {
        return shippingMethod;
    }

    public void setShippingMethod(String shippingMethod) {
        this.shippingMethod = shippingMethod;
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }

    public void setShoppingCart(ShoppingCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }

    public ShippingOptions getShippingOptions() {
        return shippingOptions;
    }

    public void setShippingOptions(ShippingOptions shippingOptions) {
        this.shippingOptions = shippingOptions;
    }

    public boolean isUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(boolean updateUser) {
        this.updateUser = updateUser;
    }

    public boolean isExpeditedCheckout() {
        return expeditedCheckout;
    }

    public void setExpeditedCheckout(boolean expeditedCheckout) {
        this.expeditedCheckout = expeditedCheckout;
    }

    public boolean isValidateShippingMethod() {
        return validateShippingMethod;
    }

    public void setValidateShippingMethod(boolean validateShippingMethod) {
        this.validateShippingMethod = validateShippingMethod;
    }
}




