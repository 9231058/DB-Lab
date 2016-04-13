create procedure updateGrade
@num int
as 
declare @iman as int;
select @iman=count(*) from "tblStudent-1"
where stuGrade < 10;
if (@iman < @num)
update "tblStudent-1"  set stuGrade = stuGrade + 1 where  9 < stuGrade and stuGrade < 10;
else
update "tblStudent-1"  set stuGrade = stuGrade + 0.5 where  9.5 < stuGrade and stuGrade < 10;