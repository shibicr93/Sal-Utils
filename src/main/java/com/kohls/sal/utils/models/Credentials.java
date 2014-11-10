package com.kohls.sal.utils.models;

public class Credentials{

    private static final long serialVersionUID = 7953698032376136494L;

    private final String userId;
    private final String password;

    public Credentials(final String userId, final String password) {
        this.userId = userId;
        this.password = password;
    }

    public String getUserId() {
        return userId;
    }

    public String getPassword() {
        return password;
    }
}
