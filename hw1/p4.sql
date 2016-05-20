CREATE TRIGGER DoctorInsertDelete
ON Doctor
AFTER INSERT, DELETE
AS
	INSERT INTO DoctorLog SELECT inserted.*, 'Insert' FROM inserted;
	INSERT INTO DoctorLog SELECT deleted.*, 'Delete' FROM deleted;