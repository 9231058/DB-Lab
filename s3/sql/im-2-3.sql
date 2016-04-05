declare @temp table(
	nameb varchar(255),
	student_idb int,
	new_grade int,
	old_grade int
);

UPDATE "students-1" SET "students-1".grade = "students-1".grade + 2 output inserted.name,
inserted.student_id,inserted.grade,deleted.grade into @temp where "students-1".grade < 15;
SELECT * FROM @temp;