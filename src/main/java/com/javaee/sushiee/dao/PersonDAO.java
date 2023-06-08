package com.javaee.sushiee.dao;

import com.javaee.sushiee.model.Person;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class PersonDAO {
    private JdbcTemplate jdbcTemplate;

    public PersonDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void saveAccount(Person person) {
        jdbcTemplate.update("INSERT INTO person(surname, name, phonenumber, email, password) VALUES (?, ?, ?, ?, ?)", person.getSurname(), person.getName()
                , person.getPhoneNumber(), person.getEmail(), person.getPassword());
    }

    public Person getAccountByEmail(String email, String password) {
        return jdbcTemplate.query("SELECT * FROM person WHERE email = ? AND password = ?", new Object[]{email, password}
                , new BeanPropertyRowMapper<>(Person.class)).stream().findAny().orElse(null);
    }

    public void deleteAccount(String email) {
        jdbcTemplate.update("DELETE FROM person WHERE email = ?", email);
    }

    public void updateAccount(Person person, String oldEmail) {
        jdbcTemplate.update("UPDATE person SET surname = ?, name = ?, phonenumber = ?, email = ?, password = ? WHERE email = ?", person.getSurname(), person.getName()
                , person.getPhoneNumber(), person.getEmail(), person.getPassword(), oldEmail);
    }
}
