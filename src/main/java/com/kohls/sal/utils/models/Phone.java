package com.kohls.sal.utils.models;

import static org.apache.commons.lang3.StringUtils.substring;

/**
 * Created by Shibi on 10-11-2014.
 */
public class Phone {
    private static final long serialVersionUID = -3539222140183924379L;

    private final String areaCode;
    private final String exchange;
    private final String extension;
    private final String phoneNumber;
    private final PhoneNumberType phoneNumberType;

    public Phone(final String areaCode, final String exchange, final String extension) {
        this.areaCode = areaCode;
        this.exchange = exchange;
        this.extension = extension;
        this.phoneNumber = areaCode + exchange + extension;
        this.phoneNumberType = null;
    }

    public Phone(final String phoneNumber, final PhoneNumberType phoneNumberType){
        this.phoneNumber = phoneNumber;
        this.phoneNumberType = phoneNumberType;
        this.areaCode = substring(phoneNumber, 0, 3);
        this.exchange = substring(phoneNumber, 3, 6);
        this.extension = substring(phoneNumber, 6, 10);

    }

    public Phone(final String phoneNumber) {
        this(phoneNumber, null);
    }

    public String getAreaCode() {
        return areaCode;
    }

    public String getExchange() {
        return exchange;
    }

    public String getExtension() {
        return extension;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public PhoneNumberType getPhoneNumberType(){
        return phoneNumberType;
    }

    public enum PhoneNumberType{

        HOME("HOME"),
        MOBILE("MOBILE");

        private final String phoneNumberType;

        private PhoneNumberType(final String phoneNumberType){
            this.phoneNumberType = phoneNumberType;

        }

        public String getPhoneNumberType(){
            return phoneNumberType;
        }

        public static PhoneNumberType fromValue(final String phoneNumberType) {
            return valueOf(phoneNumberType);
        }
    }
}
