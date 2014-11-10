package com.kohls.sal.utils.models;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Shibi on 8/4/14.
 */
public class AddItemsToCart extends AddItemToCart{

    private List<AddItemToCart> addItemsToCart = new ArrayList<AddItemToCart>();

    public List<AddItemToCart> getAddItemsToCart() {
        return addItemsToCart;
    }

    public void setAddItemsToCart(List<AddItemToCart> addItemsToCart) {
        this.addItemsToCart = addItemsToCart;
    }




}
