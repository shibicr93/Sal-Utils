package com.kohls.sal.utils.models;

/**
 * Created by Shermarajan on 11/20/2014.
 */
public class PromoCode {

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    String code;

    public PromoCodeType getType() {
        return type;
    }

    public void setType(PromoCodeType type) {
        this.type = type;
    }

    PromoCodeType type;
    Double amount;
    Double percentage;
    Boolean applied;
    Long promoId;
    String offerScope;

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Double getPercentage() {
        return percentage;
    }

    public void setPercentage(Double percentage) {
        this.percentage = percentage;
    }

    public Boolean getApplied() {
        return applied;
    }

    public void setApplied(Boolean applied) {
        this.applied = applied;
    }

    public Long getPromoId() {
        return promoId;
    }

    public void setPromoId(Long promoId) {
        this.promoId = promoId;
    }

    public String getOfferScope() {
        return offerScope;
    }

    public void setOfferScope(String offerScope) {
        this.offerScope = offerScope;
    }






}
