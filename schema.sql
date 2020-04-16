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

insert into department (name) values ("Upper Management");
insert into department (name) values ("Engineers");
insert into department (name) values ("Marketing");
insert into department (name) values ("Entry Level/Interns");

insert into role (title, salary, dept_id) values ("CEO", "90000", "1");
insert into role (title, salary, dept_id) values ("CTO", "80000", "1");
insert into role (title, salary, dept_id) values ("Lead Progammer", "70000", "2");
insert into role (title, salary, dept_id) values ("Programmers", "60000", "2");
insert into role (title, salary, dept_id) values ("Sales Lead", "50000", "3");
insert into role (title, salary, dept_id) values ("Sales Representitives", "40000", "3");
insert into role (title, salary, dept_id) values ("Junior Developer", "30000", "4");
insert into role (title, salary, dept_id) values ("Code Checker", "30000", "4");

insert into employee (first_name, last_name, role_id) values ("Chance", "Wright", "1")