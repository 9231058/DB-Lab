create trigger create_log_insert on payment_1 
after update as
begin
print 'updated payment_1'
end