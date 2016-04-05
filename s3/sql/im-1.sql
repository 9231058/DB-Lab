CREATE TABLE "persons-1"
(
	P_Id  int identity(1,1),
	LastName varchar(255),
	FirstName varchar(255),
	Address varchar(255),
	City varchar(255),
	primary key (FirstName, LastName)
);