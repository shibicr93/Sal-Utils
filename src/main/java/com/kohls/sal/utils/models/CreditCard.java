package com.kohls.sal.utils.models;

/**
 * Created by Shermarajan on 11/20/2014.
 */
public class CreditCard {
        String cardHolderName;
        String cardNumber;
        Integer cardMonth;
        Integer cardYear;

        CreditCardBrand cardBrand;
        String cid;
        Long ccdId;
        Double amount;
        Double remBal;
        String expirationDate;
        boolean expeditedCheckout;
        boolean eligibleForExpeditedCheckout;


    public String getCardHolderName() {
        return cardHolderName;
    }

    public void setCardHolderName(String cardHolderName) {
        this.cardHolderName = cardHolderName;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public Integer getCardMonth() {
        return cardMonth;
    }

    public void setCardMonth(Integer cardMonth) {
        this.cardMonth = cardMonth;
    }

    public Integer getCardYear() {
        return cardYear;
    }

    public void setCardYear(Integer cardYear) {
        this.cardYear = cardYear;
    }

    public CreditCardBrand getCardBrand() {
        return cardBrand;
    }

    public void setCardBrand(CreditCardBrand cardBrand) {
        this.cardBrand = cardBrand;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public Long getCcdId() {
        return ccdId;
    }

    public void setCcdId(Long ccdId) {
        this.ccdId = ccdId;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Double getRemBal() {
        return remBal;
    }

    public void setRemBal(Double remBal) {
        this.remBal = remBal;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate) {
        this.expirationDate = expirationDate;
    }

    public boolean isExpeditedCheckout() {
        return expeditedCheckout;
    }

    public void setExpeditedCheckout(boolean expeditedCheckout) {
        this.expeditedCheckout = expeditedCheckout;
    }

    public boolean isEligibleForExpeditedCheckout() {
        return eligibleForExpeditedCheckout;
    }

    public void setEligibleForExpeditedCheckout(boolean eligibleForExpeditedCheckout) {
        this.eligibleForExpeditedCheckout = eligibleForExpeditedCheckout;
    }
}
