package com.javaee.sushiee.dao;

import com.javaee.sushiee.model.Person;
import org.springframework.context.annotation.Scope;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class PersonDAO {
    private JdbcTemplate jdbcTemplate;

    public PersonDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void savePerson(Person person){
        jdbcTemplate.update("INSERT INTO person(surname, name, phonenumber, email, password) VALUES (?, ?, ?, ?, ?)", person.getSurname(), person.getName()
                , person.getPhoneNumber(), person.getEmail(), person.getPassword());
    }

    public Person getPersonByEmail(String email){
        return jdbcTemplate.query("SELECT * FROM person WHERE email = ?", new Object[]{email}
                , new BeanPropertyRowMapper<>(Person.class)).stream().findAny().orElse(null);
    }

}
