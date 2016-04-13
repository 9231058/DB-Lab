create procedure swap
@A int, @B int output
as
	set @B = @A;
