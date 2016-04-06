/*
 * In The Name Of God
 * ========================================
 * [] File Name : impar-6.sql
 *
 * [] Creation Date : 06-04-2016
 *
 * [] Created By : Parham Alvani (parham.alvani@gmail.com)
 * =======================================
*/
/*
 * Copyright (c) 2016 Parham Alvani.
*/
create function four_day_later(@d datetime)
return int
as
begin
	dateadd(day, 1, @d);
	return datepart(day, @d);
end
