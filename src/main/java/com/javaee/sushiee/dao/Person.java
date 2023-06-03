package com.javaee.sushiee.dao;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;
import lombok.Data;

@Data
@Named
@RequestScoped
public class Person {

    private String surname;
    private String name;
    private Long phoneNumber;
    private String email;

    public Person(String surname, String name, Long phoneNumber, String email) {
        this.surname = surname;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.email = email;
        System.out.println("Bebra completed");
    }

    public Person(){
        System.out.println("Женя лох");
    }
}
