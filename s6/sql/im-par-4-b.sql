create trigger update_name on branch_1
after update as
begin
if(update(branch_name))
begin
rollback
end
end
