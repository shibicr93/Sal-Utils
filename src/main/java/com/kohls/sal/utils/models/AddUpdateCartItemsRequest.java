package com.kohls.sal.utils.models;



import java.util.List;

public class AddUpdateCartItemsRequest {

    private User user;
    private Credentials credentials;
    private boolean checkOut;
    private long cartId;
    private List<AddCartItem> addItemList;
    private List<CartItem> updateItemList;
    private List<CartItem> removeItemList;


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Credentials getCredentials() {
        return credentials;
    }

    public void setCredentials(Credentials credentials) {
        this.credentials = credentials;
    }

    public boolean isCheckOut() {
        return checkOut;
    }

    public void setCheckOut(boolean checkOut) {
        this.checkOut = checkOut;
    }

    public long getCartId() {
        return cartId;
    }

    public void setCartId(long cartId) {
        this.cartId = cartId;
    }

    public List<AddCartItem> getAddItemList() {
        return addItemList;
    }

    public void setAddItemList(List<AddCartItem> addItemList) {
        this.addItemList = addItemList;
    }

    public List<CartItem> getUpdateItemList() {
        return updateItemList;
    }

    public void setUpdateItemList(List<CartItem> updateItemList) {
        this.updateItemList = updateItemList;
    }

    public List<CartItem> getRemoveItemList() {
        return removeItemList;
    }

    public void setRemoveItemList(List<CartItem> removeItemList) {
        this.removeItemList = removeItemList;
    }


}






