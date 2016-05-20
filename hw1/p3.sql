CREATE FUNCTION DoctorSpecialty(
	@ID int
) RETURNS varchar(30)
BEGIN
DECLARE @specialty varchar(30);
SELECT @specialty=Doctor.Specialty FROM Doctor, Patient WHERE Patient.ID=@ID and Patient.DoctorName=Doctor.DoctorName;
RETURN @specialty
END