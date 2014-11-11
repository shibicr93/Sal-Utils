package com.kohls.sal.utils.models;

/**
 * Created by Shibi on 10-11-2014.
 */
public class Contact {
    private static  long serialVersionUID = 5618112253284166831L;

    private  Names names;
    private  Address address;
    private  Phone phone;
    private  String email;

    public Names getNames() {
        return names;
    }

    public void setNames(Names names) {
        this.names = names;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Phone getPhone() {
        return phone;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
