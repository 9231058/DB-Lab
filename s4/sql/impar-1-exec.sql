declare @res varchar(50);
exec rankStu
@grade = @res output;
print @res;