package com.kohls.sal.utils.models;

import java.util.List;

/**
 * Created by Shibi on 10-11-2014.
 */
public class BillingShippingRequest {

    private static final long serialVersionUID = 2879607272533421159L;
    private Contact billingContact;
    private Contact shippingContact;
    private User user;
    private boolean shippingAddressSameAsBillingAddress;
    private String shippingMethod;
    private ShoppingCart shoppingCart;
    private ShippingOptions shippingOptions = new ShippingOptions();
    private boolean updateUser;
    private boolean expeditedCheckout = false;
    private boolean validateShippingMethod = false;

    public boolean isValidateShippingMethod() {
        return validateShippingMethod;
    }

    public void setValidateShippingMethod(final boolean validateShippingMethod) {
        this.validateShippingMethod = validateShippingMethod;
    }

    public void setBillingContact(final Contact billingContact) {
        this.billingContact = billingContact;
    }

    public Contact getBillingContact() {
        return billingContact;
    }

    public void setShippingContact(final Contact shippingContact) {
        this.shippingContact = shippingContact;
    }

    public Contact getShippingContact() {
        return shippingAddressSameAsBillingAddress ? billingContact : shippingContact;
    }

    /**
     * @deprecated use getBillingContact() instead
     */
    public Address getBillingAddress() {
        return notNull(billingContact) ? billingContact.getAddress() : null;
    }

    /**
     * @deprecated use setBillingContact(Contact) instead
     */
    public void setBillingAddress(final Address billingAddress) {
        this.billingContact = Contact.Builder.getOrCreate(billingContact).address(billingAddress).build();
    }

    /**
     * @deprecated use getShippingContact() instead
     */
    public Address getShippingAddress() {
        return notNull(shippingContact) ? shippingContact.getAddress() : null;
    }

    /**
     * @deprecated use setShippingContact(Contact) instead
     */
    public void setShippingAddress(final Address shippingAddress) {
        this.shippingContact = Contact.Builder.getOrCreate(shippingContact).address(shippingAddress).build();
    }

    /**
     * @deprecated use getBillingContact() instead
     */
    public Phone getBillingPhone() {
        return notNull(billingContact) ? billingContact.getPhone() : null;
    }

    /**
     * @deprecated use setBillingContact(Contact) instead
     */
    public void setBillingPhone(final Phone billingPhone) {
        this.billingContact = Contact.Builder.getOrCreate(billingContact).phone(billingPhone).build();
    }

    /**
     * @deprecated use getShippingContact() instead
     */
    public Phone getShippingPhone() {
        return notNull(shippingContact) ? shippingContact.getPhone() : null;
    }

    /**
     * @deprecated use setShippingContact(Contact) instead
     */
    public void setShippingPhone(final Phone shippingPhone) {
        this.shippingContact = Contact.Builder.getOrCreate(shippingContact).phone(shippingPhone).build();
    }

    public User getUser() {
        return user;
    }

    public void setUser(final User user) {
        this.user = user;
    }

    public boolean isShippingAddressSameAsBillingAddress() {
        return shippingAddressSameAsBillingAddress;
    }

    public void setShippingAddressSameAsBillingAddress(final boolean shippingAddressSameAsBillingAddress) {
        this.shippingAddressSameAsBillingAddress = shippingAddressSameAsBillingAddress;
    }

    public String getShippingMethod() {
        return shippingMethod;
    }

    public void setShippingMethod(final String shippingMethod) {
        this.shippingMethod = shippingMethod;
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }

    public void setShoppingCart(final ShoppingCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }

    public ShippingOptions getShippingOptions() {
        return shippingOptions;
    }

    public void setShippingOptions(final ShippingOptions shippingOptions) {
        this.shippingOptions = shippingOptions;
    }

    public boolean isUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(final boolean updateUser) {
        this.updateUser = updateUser;
    }

    public boolean isExpeditedCheckout() {
        return expeditedCheckout;
    }

    public void setExpeditedCheckout(final boolean expeditedCheckout) {
        this.expeditedCheckout = expeditedCheckout;
    }
}
