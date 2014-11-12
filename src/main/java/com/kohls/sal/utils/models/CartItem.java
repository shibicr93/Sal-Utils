package com.kohls.sal.utils.models;

/**
 * Created by Shibi on 8/4/14.
 */
public class CartItem {

    private String productId;
    private String skuCode;
    private String quantity;
    private String cartId;

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

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
}


