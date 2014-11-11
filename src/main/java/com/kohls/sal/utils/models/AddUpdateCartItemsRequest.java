package com.kohls.sal.utils.models;



import com.kohls.sal.utils.models.CartItem;
import com.kohls.sal.utils.models.Credentials;
import com.kohls.sal.utils.models.User;

import java.util.List;

public class AddUpdateCartItemsRequest{

    private User user;
    private Credentials credentials;
    private boolean checkOut;
    private long cartId;
    private List<CartItem> addItemList;
    private List<CartItem> updateItemList;
    private List<CartItem> removeItemList;
    private boolean expeditedCheckout = false;


