create function test_insert(@id int)
returns int
as
begin

update "tblStudent-1" set stuID=24;
return 0;
end;