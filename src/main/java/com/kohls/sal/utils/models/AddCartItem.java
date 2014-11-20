package com.kohls.sal.utils.models;

/**
 * Created by Venu on 18-11-2014.
 */
public class AddCartItem {
    private String skuCode;
    private int quantity;
    private boolean gift;

    public String getSkuCode() {
        return skuCode;
    }

    public void setSkuCode(String skuCode) {
        this.skuCode = skuCode;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isGift() {
        return gift;
    }

    public void setGift(boolean gift) {
        this.gift = gift;
    }


}
