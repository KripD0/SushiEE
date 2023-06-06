package com.javaee.sushiee.model;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Named
@RequestScoped
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Person {

    private String surname;
    private String name;
    private long phoneNumber;
    private String email;
}
