
begin transaction t1

UPDATE "persons-1" SET phone_number='0019392' where P_id=1;
UPDATE "persons-1" SET phone_number='0019392' where P_id=2;
UPDATE "persons-1" SET phone_number='0019392' where P_id=3;
UPDATE "persons-1" SET phone_number='0019392' where P_id=4;
commit transaction t1;

SELECT * FROM "persons-1";