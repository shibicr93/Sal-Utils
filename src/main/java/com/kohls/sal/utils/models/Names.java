package com.kohls.sal.utils.models;

import org.apache.commons.lang3.StringUtils;

import static org.apache.commons.lang3.StringUtils.isNotEmpty;

/**
 * Created by Shibi on 10-11-2014.
 */
public class Names {

    private static final long serialVersionUID = -8961980167719174667L;

    private final String firstName;
    private final String lastName;
    private final String middleName;

    public Names(final String firstName, final String middleName, final String lastName) {

        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
    }

    public Names(final String firstName, final String lastName) {
        this(firstName, "", lastName);
    }

    public String getFirstName() {
        return firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public String toString() {
        return (isNotEmpty(middleName))
                ? StringUtils.join(new String[]{firstName, middleName, lastName}, " ")
                : StringUtils.join(new String[] {firstName, lastName}, " ");
    }
}
