--liquibase formatted sql

--changeset your.name:1
--rollback DROP TABLE person;
create table person (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset your.name:2
--rollback DROP TABLE company;
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset other.dev:3
--rollback ALTER TABLE person DROP COLUMN country;
alter table person add  countryTest varchar(22)

--changeset other.dev:4
--rollback ALTER TABLE person DROP COLUMN state;
alter table person add  stateTest varchar(245)

--changeset other.dev:5
--rollback ALTER TABLE company DROP COLUMN country;
alter table company add  countryTest varchar(452)