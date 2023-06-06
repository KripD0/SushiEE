create table person
(
    id          serial
        primary key,
    surname     varchar,
    name        varchar,
    phoneNumber varchar(20),
    email       varchar(256),
    password    varchar
);