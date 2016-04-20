/*
 * In The Name Of God
 * ========================================
 * [] File Name : im-par-1.sql
 *
 * [] Creation Date : 20-04-2016
 *
 * [] Created By : Parham Alvani (parham.alvani@gmail.com)
 * =======================================
*/
/*
 * Copyright (c) 2016 Parham Alvani.
*/
create database if not exists DB_Lab;

use DB_Lab;

create table if not exists employee_1 (
	employee_id integer primary key,
	employee_name varchar(255),
	telephone_number varchar(50),
	start_date datetime,
	employment_length integer,
	dependent_name varchar(255),
	works_for integer,
	customer_id integer,
	foreign key (works_for) references employee_1(employee_id)
);

create table if not exists customer_1 (
	customer_id int primary key,
	customer_name varchar(255),
	customer_street varchar(255),
	customer_city varchar(255)
);

create table if not exists savings_account_1 (
	account_number integer primary key,
	balance integer,
	interest_rate integer
);

create table if not exists checking_account_1 (
	account_number integer primary key,
	balance integer,
	overdraft_amount integer
);

create table if not exists depositor_1 (
	customer_id integer,
	account_number integer,
	access_date datetime,
	primary key (customer_id, account_number),
	foreign key (customer_id) references customer_1(customer_id)
);

create table if not exists branch_1 (
	branch_city varchar(255),
	assests integer,
	branch_name varchar(255) primary key
);

create table if not exists loan_1 (
	loan_number integer primary key,
	amount integer,
	customer_id integer,
	branch_name varchar(255),
	foreign key (branch_name) references branch_1(branch_name),
	foreign key (customer_id) references customer_1(customer_id)
);

create table if not exists payment_1 (
	payment_number integer,
	payment_date datetime,
	payment_amount integer,
	loan_number integer,
	primary key (payment_number, loan_number),
	foreign key (loan_number) references loan_1(loan_number)
);
