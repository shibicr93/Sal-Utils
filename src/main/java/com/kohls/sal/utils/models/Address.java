package com.kohls.sal.utils.models;

/**
 * Created by Shermarajan on 11/11/2014.
 */
public class Address {
    private static final long serialVersionUID = -7839210130876902951L;



    private  String address1;
    private  String address2;
    private  String city;
    private  String stateCode;

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStateCode() {
        return stateCode;
    }

    public void setStateCode(String stateCode) {
        this.stateCode = stateCode;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getCountyGeoCode() {
        return countyGeoCode;
    }

    public void setCountyGeoCode(String countyGeoCode) {
        this.countyGeoCode = countyGeoCode;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    private  String countryCode;
    private  String zipCode;
    private  String countyGeoCode;
    private long id;
}
