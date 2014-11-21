package com.kohls.sal.utils.models;

/**
 * Created by Shermarajan on 11/20/2014.
 */
public enum CreditCardBrand {

        KOHLS_CHARGE("KOHLS", "Kohl's Charge"),
        AMERICAN_EXPRESS("AMEX", "American Express"),
        DISCOVER_NETWORK("DISC", "Discover Network"),
        MASTERCARD("MC", "Mastercard"),
        VISA("VISA", "Visa"),
        KOHLS_GIFT_CARD("GC", "GC"),
        KOHLS_MERCHANT_CARD ("KMRC", "KMRC"),
        KOHLS_MERCHANT_GIFT_CARD("KMGC", "KMGC"),
        KOHLS_CASH("KCC", "KCC");

        private  String displayName;
        private  String brand;


        private CreditCardBrand(final String brand, final String displayName) {
            this.brand = brand;
            this.displayName = displayName;
        }

        public String getBrand() {
            return brand;
        }

        public String getDisplayName() {
            return displayName;
        }

        public String toString() {
            return displayName;
        }


    }
