declare @d datetime;
declare @res int;
set @d = getdate();
exec @res = four_day_later
@d = @d;

print @res;