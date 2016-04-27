alter trigger create_log_delete on payment_1 
after delete as
begin
insert into payment_1_log values (deleted,'deleted');
end