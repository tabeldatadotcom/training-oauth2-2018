create schema auth;

create table auth.users
(
  id       character varying(64)  not null primary key,
  user_id  character varying(100) not null unique,
  password character varying(150) not null
);

create table auth.roles
(
  id   character varying(64)  not null primary key,
  name character varying(100) not null
);

create table auth.user_roles
(
  id      character varying(64) not null primary key,
  user_id character varying(64) not null,
  role_id character varying(64) not null
);

insert into auth.users(id, user_id, password)
values ('admin', 'admin', '$2y$11$D3bUWgGq6QQAS8TP1iXYXuYum3CV1eENK/N2bH5TfDy86jKiZAn0K'),
       ('user', 'user', '$2y$11$xS.Tn.V6sek3gy1c1l1XUen4mFnXFwSCulfezIDlGpxhbOWbGdMae');

insert into auth.roles(id, name)
values ('admin', 'ROLE_ADMIN'),
       ('user', 'ROLE_USER');

insert into auth.user_roles(id, user_id, role_id)
VALUES ('admin-admin', 'admin', 'admin'),
       ('admin-user', 'admin', 'user'),
       ('user-user', 'user', 'user');