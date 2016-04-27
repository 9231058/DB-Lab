
create table  payment_1 (
	payment_number int ,
	payment_date datetime,
	payment_amount int ,
	loan_number int ,
	primary key (payment_number, loan_number),
	foreign key (loan_number) references loan_1(loan_number)
);