package com.kohls.sal.utils.models;

import java.util.Date;

/**
 * Created by Shibi on 10-11-2014.
 */
public class User  {  //NOPMD

    private static final long serialVersionUID = 7012206730789796666L;

    private final String email;
    private final Names names;
    private final String loyaltyId;
    private final Date dateOfBirth;
    private final Phone phone;
    private final String loyaltyPostalCode;
    private boolean eligibleForExpeditedCheckout;

    public User(final Names names, final String email, final String loyaltyId) {
        this(names, email, loyaltyId, null, null,null,false);
    }

    public User(final Names names, final String email, final String loyaltyId, final String loyaltyPostalCode,
                final boolean eligibleForExpeditedCheckout) {
        this(names, email, loyaltyId, null, null,loyaltyPostalCode,eligibleForExpeditedCheckout);
    }

    public User(final Names names, final String email, final String loyaltyId,
                final Date dateOfBirth, final Phone phone,final String loyaltyPostalCode,
                final boolean eligibleForExpeditedCheckout) {
        this.names = names;
        this.email = email;
        this.loyaltyId = loyaltyId;
        this.dateOfBirth = dateOfBirth;
        this.phone = phone;
        this.loyaltyPostalCode = loyaltyPostalCode;
        this.eligibleForExpeditedCheckout = eligibleForExpeditedCheckout;
    }

    //This Constructor to avoid the existing contract flow
    public User(final Names names, final String email) {
        this(names, email, null, null, null,null,false);
    }

    public String getEmail() {
        return email;
    }

    public Names getNames() {
        return names;
    }

    public String getFirstName() {
        return names.getFirstName();
    }

    public String getLastName() {
        return names.getLastName();
    }

    public String getFullName() {
        return names.toString();
    }

    public String getLoyaltyId() {
        return loyaltyId;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public Phone getPhone() {
        return phone;
    }

    public String getLoyaltyPostalCode() {
        return loyaltyPostalCode;
    }

    public boolean isEligibleForExpeditedCheckout() {
        return eligibleForExpeditedCheckout;
    }
}
