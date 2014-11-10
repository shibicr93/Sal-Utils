package com.kohls.sal.utils.models;

/**
 * Created by Shibi on 10-11-2014.
 */
public class Contact {
    private static final long serialVersionUID = 5618112253284166831L;

    private final Names names;
    private final Address address;
    private final Phone phone;
    private final String email;

    Contact(final Builder builder) {
        names = builder.names;
        address = builder.address;
        phone = builder.phone;
        email = builder.email;
    }

    public String getEmail() {
        return email;
    }

    public Names getNames() {
        return names;
    }

    public Address getAddress() {
        return address;
    }

    public Phone getPhone() {
        return phone;
    }

    public Builder toBuilder() {
        return new Builder().names(names).address(address).phone(phone);
    }

    public static class Builder {
        private final boolean strict;

        private Names names;
        private Address address;
        private Phone phone;
        private String email;

        public Builder() {
            this.strict = false;
        }

        public Builder(final boolean strict) {
            this.strict = strict;
        }

        public Builder names(final Names names) {
            this.names = names;
            return this;
        }

        public Builder address(final Address address) {
            this.address = address;
            return this;
        }

        public Builder phone(final Phone phone) {
            this.phone = phone;
            return this;
        }

        public Builder email(final String email) {
            this.email = email;
            return this;
        }

        private void validate() {
            checkNotNull(names, "names is required");
            checkNotNullOrEmpty(names.getFirstName(), "First name is required");
            checkNotNullOrEmpty(names.getLastName(), "Last name is required");

            checkNotNull(address, "address is required");
            checkNotNullOrEmpty(address.getAddress1(), "Address Line 1 is required");
            checkNotNullOrEmpty(address.getCity(), "City is required");
            checkNotNullOrEmpty(address.getStateCode(), "State is required");
            checkNotNullOrEmpty(address.getZipCode(), "Zip Code is required");
            checkNotNullOrEmpty(address.getCountryCode(), "Country is required");
            checkNotNull(address.getType(), "Address Type is required");

            checkNotNull(phone, "Phone number is required");
            checkNotNullOrEmpty(phone.getAreaCode(), "Area code is required");
            checkNotNullOrEmpty(phone.getExchange(), "Exchange is required");
            checkNotNullOrEmpty(phone.getExtension(), "Extension is required");
        }

        public Contact build() {
            if (strict) {
                validate();
            }
            return new Contact(this);
        }

        public static Contact.Builder getOrCreate(final Contact contact) {
            return notNull(contact) ? contact.toBuilder() : new Builder(false);
        }
    }
}
