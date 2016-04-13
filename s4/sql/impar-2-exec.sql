declare @num int;

set @num = 1;
exec updateGrade 
@num=@num;

select * from "tblStudent-1";