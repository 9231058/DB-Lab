create trigger create_log_insert_real on payment_1 
after insert as
begin
print 'Inserted into payment'
end