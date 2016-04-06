/*
 * In The Name Of God
 * ========================================
 * [] File Name : impar-3.sql
 *
 * [] Creation Date : 06-04-2016
 *
 * [] Created By : Parham Alvani (parham.alvani@gmail.com)
 * =======================================
*/
/*
 * Copyright (c) 2016 Parham Alvani.
*/
create procedure swap
@A int, @B int output
as
	set @B = @A;
