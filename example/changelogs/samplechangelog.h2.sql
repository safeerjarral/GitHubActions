--liquibase formatted sql

--changeset Usman:1.1.1
--rollback DROP TABLE person;
create table personEmail (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset Usman:1.1.2
--rollback DROP TABLE company;
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset Usman:1.1.3
--rollback ALTER TABLE person DROP COLUMN country;
alter table person add  countryTest varchar(22)
--changeset Usman:1.1.4
--rollback ALTER TABLE person DROP COLUMN state;
alter table person add  stateTest varchar(245)

--changeset Usman:1.1.5
alter table company add  countryTest varchar(452)

--changeset Usman:1.1.6
