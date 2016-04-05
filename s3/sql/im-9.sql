SET identity_insert "persons-1" on;

DELETE FROM "persons-1" where FirstName='taylor';

declare @temp nvarchar(255);

SELECT @temp = phone_number FROM "persons-1" where Firstname='Tjessem';

declare @casted int;
SET @casted = cast(@temp as int);

if @temp < 0011234567
	INSERT INTO "persons-1" (P_id,FirstName,Lastname, Address,City,phone_number) VALUES (6,'taylor','Jackson','Nisseisten87','Sandnes','0011234567');
else
	INSERT INTO "persons-1" (P_id,FirstName,Lastname, Address,City,phone_number) VALUES (8,'taylor','Jackson','Nisseisten87','Sandnes','0011234567');

SELECT * FROM "persons-1";