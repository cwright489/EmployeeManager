create database EmployeeManager;
use EmployeeManager;

create table department (
    id int auto_increment,
    name varchar(30) not null,
    primary key(id)
);

create table role (
    id int auto_increment,
    title varchar(30) not null,
    salary decimal(9.8) not null,
    dept_id int not null,
    primary key(id),
    foreign key(dept_id),
    references department(id),
    on delete cascade
);

create table employee (
    id int auto_increment,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    role_id int not null,
    manager_id int,
    primary key(id)
    foreign key(role_id)
    references role(id)
    on delete cascade
);