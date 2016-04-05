SET identity_insert "persons-1" on;

begin transaction t1
INSERT INTO "persons-1" (P_id, FirstName, LastName, City,Address,phone_number) VALUES 
(7,'Tjessem','Jakob', 'Nissestien 67', 'Sandnes','0017673276');

SELECT * FROM "persons-1" ORDER BY FirstName ASC;
commit transaction t1;