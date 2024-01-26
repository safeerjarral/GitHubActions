--liquibase formatted sql

--changeset Usman:US1
--rollback DROP TABLE person;
create table person (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset Usman:US2
--rollback DROP TABLE company;
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset Usman:US3
--rollback ALTER TABLE person DROP COLUMN country;
alter table person add  countryTest varchar(22)
--changeset Usman:US4
--rollback ALTER TABLE person DROP COLUMN state;
alter table person add  stateTest varchar(245)

--changeset Usman:US5
alter table company add  countryTest varchar(452)