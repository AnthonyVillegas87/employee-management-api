package com.encipher.employeemanagementapi.model;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Employee {

    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String jobTitle;
    private String department;
    private LocalDate hireDate;
    private double salary;


    @Override
    public String toString() {
        return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", jobTitle=" + jobTitle + ", department=" + department + ", hireDate=" + hireDate + ", salary=" + salary + "]";


    }

}
