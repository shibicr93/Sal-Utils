package com.kohls.sal.utils.models;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Raju on 11/12/2014.
 */
public class AddItemsToCart extends CartItem {

    private List<CartItem> addItemsToCart = new ArrayList<CartItem>();

    public List<CartItem> getAddItemsToCart() {
        return addItemsToCart;
    }

    public void setAddItemsToCart(List<CartItem> addItemsToCart) {
        this.addItemsToCart = addItemsToCart;
    }
}
