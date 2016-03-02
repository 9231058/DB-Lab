SELECT name FROM "Prj-1" group by name having count(emp_id) > 4;

SELECT "Prj-1".Name, "Dept-1".Name, "Emp-1".Name FROM "Dept-1", "Prj-1", "Emp-1" where "Dept-1".DeptNo = "Emp-1".DeptNo and "Prj-1".Emp_id = "Emp-1".Emp_id;

SELECT sum("Emp-1".Salary) as 'Iman' FROM "Emp-1", "Prj-1" WHERE "Emp-1".emp_id = "Prj-1".Emp_id and "Prj-1".Name = 'B';

SELECT "Prj-1".name, avg("Emp-1".Salary) as 'Average' FROM "Emp-1", "Prj-1" WHERE "Emp-1".emp_id = "Prj-1".Emp_id group by "Prj-1".name;

SELECT "Prj-1".name ,"Emp-1".name FROM "Emp-1", "Prj-1" WHERE "Emp-1".Emp_id = "Prj-1".Emp_id and "Emp-1".Name = 'manager'; 

SELECT "Emp-1".Salary FROM "Emp-1", "Prj-1" WHERE "Emp-1".Emp_id = "Prj-1".Emp_id and "Prj-1".name = 'A';

SELECT avg("Emp-1".Salary) FROM "Emp-1", "Prj-1" WHERE "Emp-1".Emp_id = "Prj-1".Emp_id and "Prj-1".name = 'C';