package com.kohls.sal.utils.models;

import com.google.common.base.Predicate;
import com.google.common.collect.Lists;

import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/**
 * Created by Shibi on 10-11-2014.
 */
public class ShoppingCart {
    private static final long serialVersionUID = 3985906211561047414L;
    private List<CartItem> items;
    private double subTotal;
    private double total;
    private double estimatedShipping;
    private double tax;
    private double shippingSurcharges;
    private double giftWrapCharges;
    private String promoMessage;
    private Long cartId;
    private String statusCode;
    private Integer type;
    private String typeCode;
    private Long createdFor;
    private Double estimateSavings;

    public List<CartItem> getItems() {
        return items;
    }

    public void setItems(List<CartItem> items) {
        this.items = items;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public double getEstimatedShipping() {
        return estimatedShipping;
    }

    public void setEstimatedShipping(double estimatedShipping) {
        this.estimatedShipping = estimatedShipping;
    }

    public double getTax() {
        return tax;
    }

    public void setTax(double tax) {
        this.tax = tax;
    }

    public double getShippingSurcharges() {
        return shippingSurcharges;
    }

    public void setShippingSurcharges(double shippingSurcharges) {
        this.shippingSurcharges = shippingSurcharges;
    }

    public double getGiftWrapCharges() {
        return giftWrapCharges;
    }

    public void setGiftWrapCharges(double giftWrapCharges) {
        this.giftWrapCharges = giftWrapCharges;
    }

    public String getPromoMessage() {
        return promoMessage;
    }

    public void setPromoMessage(String promoMessage) {
        this.promoMessage = promoMessage;
    }

    public Long getCartId() {
        return cartId;
    }

    public void setCartId(Long cartId) {
        this.cartId = cartId;
    }

    public String getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(String statusCode) {
        this.statusCode = statusCode;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }

    public Long getCreatedFor() {
        return createdFor;
    }

    public void setCreatedFor(Long createdFor) {
        this.createdFor = createdFor;
    }

    public Double getEstimateSavings() {
        return estimateSavings;
    }

    public void setEstimateSavings(Double estimateSavings) {
        this.estimateSavings = estimateSavings;
    }
}
