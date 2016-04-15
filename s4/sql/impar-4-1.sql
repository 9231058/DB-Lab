declare @ret int;
exec @ret=find_student
@name = 'Akbar';
print @ret;