create function get_department (@employee_id int)
returns varchar(255)
as begin
declare @var varchar(255)

select @var=employee_1.department_name from employee_1.employee_id;

return @var
end 