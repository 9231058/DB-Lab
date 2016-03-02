CREATE TABLE "Dept-1"(
	DeptNo int primary key,
	Name varchar(50)
);

CREATE TABLE "Emp-1" (
	Emp_id int primary key identity(1,1),
	Name varchar(50),
	Salary int,
	DeptNo int,
	foreign key (DeptNo) references "Dept-1"(DeptNo)
);

CREATE TABLE "Prj-1" (
	Prj_id int identity(1,1),
	Emp_id int,
	primary key (Prj_id, Emp_id),
	foreign key (Emp_id) references "Emp-1"(Emp_id)
);
