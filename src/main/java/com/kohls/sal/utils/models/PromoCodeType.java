package com.kohls.sal.utils.models;

/**
 * Created by Shermarajan on 11/21/2014.
 */
public enum PromoCodeType {
    D("D"),
    DA("DA"),
    DP("DP"),
    FS("FS"),
    PP("PP");

    private final String type;

    public String getType() {
        return type;
    }

    private PromoCodeType(final String type) {
        this.type = type;
    }




}
