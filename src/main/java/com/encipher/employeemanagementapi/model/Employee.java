package com.encipher.employeemanagementapi.model;

import lombok.Data;

@Data
public class Employee {

    private long id;
    private String firstName;
    private String lastName;
    private String email;
    private String username;
    private String password;
    private String address;
    private String phone;
    private int role;
    private int managerId;
    private String roles;

}
