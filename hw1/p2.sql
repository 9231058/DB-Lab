CREATE PROCEDURE PatientFindOrAdd
	@id int, @name varchar(30),
	@zipcode int, @doctorName varchar(30),
	@problem varchar(40)
AS
	IF EXISTS (SELECT * FROM Patient WHERE PatientName = @name) AND EXISTS (SELECT * FROM Patient WHERE id = @id) 
		SELECT Doctor.DoctorName, Doctor.Specialty 
				FROM Patient,Doctor
				WHERE Patient.DoctorName = Doctor.DoctorName AND Patient.PatientName = @name AND Patient.ID = @id;
	ELSE IF NOT EXISTS (SELECT * FROM Patient where PatientName = @name) AND NOT EXISTS (SELECT * FROM Patient where ID = @id)
		INSERT INTO Patient VALUES(@id, @name, @zipcode, @doctorName, @problem);
	ELSE
		PRINT('ERROR: PatientName or ID Not Found');