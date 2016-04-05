declare @temp int

SELECT @temp = max(P_id) FROM "persons-1";

while @temp > 0
	begin
		print 'Okay';
		set @temp=@temp-1;
	end