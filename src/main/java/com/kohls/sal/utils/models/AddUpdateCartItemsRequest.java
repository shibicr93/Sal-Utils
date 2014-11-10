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

    private AddUpdateCartItemsRequest(final Builder builder){
        this.user = builder.user;
        this.credentials = builder.credentials;
        this.cartId = builder.cartId;
        this.checkOut = builder.checkOut;
        this.addItemList = builder.addItemList;
        this.updateItemList = builder.updateItemList;
        this.removeItemList = builder.removeItemList;
        this.expeditedCheckout = builder.expeditedCheckout;
    }

    public static class Builder{

        private List<CartItem> addItemList;
        private List<CartItem> updateItemList;
        private List<CartItem> removeItemList;
        private boolean checkOut;
        private long cartId;
        private User user;
        private Credentials credentials;
        private boolean expeditedCheckout;

        public Builder addItems(final List<CartItem> addItemList){
            this.addItemList = addItemList;
            return this;
        }

        public Builder updateItemList(final List<CartItem> updateItemList){
            this.updateItemList = updateItemList;
            return this;
        }

        public Builder removeItems(final List<CartItem> removeItemList){
            this.removeItemList = removeItemList;
            return this;
        }

        public Builder cartId(final long cartId){
            this.cartId = cartId;
            return this;
        }

        public Builder checkOut(final boolean checkOut){
            this.checkOut = checkOut;
            return this;
        }

        public Builder user(final User user){
            this.user = user;
            return this;
        }

        public Builder credentials(final Credentials credentials){
            this.credentials = credentials;
            return this;
        }


        public Builder expeditedCheckout(final boolean expeditedCheckout){
            this.expeditedCheckout = expeditedCheckout;
            return this;
        }

        public AddUpdateCartItemsRequest build(){
            return new AddUpdateCartItemsRequest(this);
        }
    }

    public User getUser() {
        return user;
    }

    public Credentials getCredentials() {
        return credentials;
    }

    public long getCartId() {
        return cartId;
    }

    public boolean isCheckOut() {
        return checkOut;
    }

    public List<CartItem> getAddItemList() {
        return addItemList;
    }

    public List<CartItem> getUpdateItemList() {
        return updateItemList;
    }

    public List<CartItem> getRemoveItemList() {
        return removeItemList;
    }

    public boolean isExpeditedCheckout() {
        return expeditedCheckout;
    }
}
