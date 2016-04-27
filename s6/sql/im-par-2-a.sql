CREATE PROCEDURE get_balance @name varchar(255),@balance int output,@account_number int output as
select @name = account_1.balance,@account_number = account_1.account_number 
from depositor_1,account_1, customer_1
where depositor_1.account_id = customer_1.customer_id and 
account_1.account_id = customer_1.customer_id and customer_1.customer_name = @name;