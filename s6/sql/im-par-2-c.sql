create procedure get_info @recep_id int as
    WAITFOR DELAY '00:00:10';
select * from customer_1 where customer_1.customer_id = @recep_id;