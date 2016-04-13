alter function find_student (@name varchar(50))
returns int
as
begin
	declare @retval int;
	select @retval=stuGrade from "tblStudent-1" where stuName=@name;
	return @retval;
end;