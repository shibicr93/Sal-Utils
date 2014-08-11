package com.kohls.sal.utils.controller;

/**
 * Created by Shibi on 8/4/14.
 */
public abstract class CartItem {

    protected String product_id;
    protected String sku_code;
    protected String quantity;
    protected String requestor;

    public abstract String getProduct_id();

    public abstract void setProduct_id(String product_id);

    public abstract String getSku_code();

    public abstract void setSku_code(String sku_code);

    public abstract String getQuantity() ;

    public abstract void setQuantity(String quantity);

    public abstract String getRequestor();

    public abstract void setRequestor(String requestor);
}


