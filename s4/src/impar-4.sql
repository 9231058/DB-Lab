/*
 * In The Name Of God
 * ========================================
 * [] File Name : impar-4.sql
 *
 * [] Creation Date : 06-04-2016
 *
 * [] Created By : Parham Alvani (parham.alvani@gmail.com)
 * =======================================
*/
/*
 * Copyright (c) 2016 Parham Alvani.
*/
create function find_student (@name varchar(50))
returns int
as
begin
	declare @retval int;
	select @retval=stuGrade from "tblStudent-1" where stuName=@name;
	return @retval;
end;
