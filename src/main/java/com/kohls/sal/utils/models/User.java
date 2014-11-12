package com.kohls.sal.utils.models;

import java.util.Date;

/**
 * Created by Shibi on 10-11-2014.
 */
public class User {  //NOPMD

    private static final long serialVersionUID = 7012206730789796666L;

    private String email;
    private Names names;
    private String loyaltyId;
    private Date dateOfBirth;
    private Phone phone;
    private String loyaltyPostalCode;


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Names getNames() {
        return names;
    }

    public void setNames(Names names) {
        this.names = names;
    }

    public String getLoyaltyId() {
        return loyaltyId;
    }

    public void setLoyaltyId(String loyaltyId) {
        this.loyaltyId = loyaltyId;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Phone getPhone() {
        return phone;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    public String getLoyaltyPostalCode() {
        return loyaltyPostalCode;
    }

    public void setLoyaltyPostalCode(String loyaltyPostalCode) {
        this.loyaltyPostalCode = loyaltyPostalCode;
    }
}

