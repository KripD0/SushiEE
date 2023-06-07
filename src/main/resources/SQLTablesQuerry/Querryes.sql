create table person
(
    id          serial
        primary key,
    surname     varchar,
    name        varchar,
    phoneNumber varchar(20),
    email       varchar(256) UNIQUE,
    password    varchar
);

--SELECT * FROM person WHERE email = ? AND password = ?
--UPDATE person SET surname = ?, name = ?, phonenumber = ?, email = ?, password = ? WHERE email = ?
--DELETE FROM person WHERE email = ?
--DROP table person;
--INSERT INTO person(surname, name, phonenumber, email, password) VALUES (?, ?, ?, ?, ?);