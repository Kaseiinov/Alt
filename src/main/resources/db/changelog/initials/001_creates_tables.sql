create table if not exists users
(
    id         bigserial primary key,
    first_name varchar(64),
    last_name  varchar(64),
    email      varchar(255) unique not null,
    password   varchar(255)        not null,
    enabled    boolean default true
);