
alter procedure rankStu 
@grade varchar(50) output
as

declare @iman int;
select @iman=count(*) 
from "tblStudent-1" where stuGrade <10;

if @iman < 1
set @grade = 'GOOD';
else if @iman = 2 or @iman = 3
set @grade = 'Normal';
else
set @grade = 'Bad';






