package com.kohls.sal.utils.models;

/**
 * Created by Shermarajan on 11/11/2014.
 */
public class ShippingCost {

    private static final long serialVersionUID = 7108056211595766635L;

    private  Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(Double totalCost) {
        this.totalCost = totalCost;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    private  Double totalCost;
    private  Double cost;


}
