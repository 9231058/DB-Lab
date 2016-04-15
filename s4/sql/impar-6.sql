alter function four_day_later(@d datetime)
returns int
as
begin
	declare @nd datetime;
	set @nd = dateadd(day, 4, @d);
	return datepart(day, @nd);
end;
