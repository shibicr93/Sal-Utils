package com.kohls.sal.utils.models;

/**
 * Created by Shibi on 8/4/14.
 */
public abstract class CartItem {

    protected String productId;
    protected String skuCode;
    protected String quantity;
    protected String cartId;

    public String getCartId() {
        return cartId;
    }

    public void setCartId(final String cartId) {
        this.cartId = cartId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(final String productId) {
        this.productId = productId;
    }

    public String getSkuCode() {
        return skuCode;
    }

    public void setSkuCode(final String skuCode) {
        this.skuCode = skuCode;
    }

    public abstract String getQuantity();

    public abstract void setQuantity(String quantity);

}


