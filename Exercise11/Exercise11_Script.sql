--Exercise11_Script.sql
--Name: Marissa Gonçalves
--Date: October 22, 2018


CONNECT scott/tiger;
SET LINESIZE 200;
SET PAGESIZE 40;
SET ECHO ON;




START "D:\Marissa\indo_n2.sql"


SPOOL "D:\Semester III\Database I\Exercises\Exercise11\Exercise11_Spool.txt";




--Question 1:

SELECT f.Name
FROM faculty f, department d
WHERE f.DeptId = d.DeptId AND f.DeptId = 3;






--Question 2:

SELECT Name 
FROM faculty
WHERE DeptId = 3 AND DeptId IN (SELECT DeptId
                                FROM department);




				 

--Question 3:

SELECT s.Last, s.First, t.TermDesc
FROM student s, term t
WHERE s.StartTerm = t.TermId;






--Question 4:

SELECT c.CourseId, c.Title, c.PreReq, t.Title 
FROM course c LEFT JOIN course t
ON t.CourseId = c.PreReq; 






--Question 5:

SELECT SUM(Capacity)
FROM location
WHERE RoomType IN (SELECT RoomType
                   FROM room
				   WHERE RoomDesc = 'Classroom');







--Question 6:

SELECT SUM(Capacity)
FROM location l, room r
WHERE l.RoomType = r.RoomType AND r.RoomDesc = 'Classroom';






--Question 7:

SELECT Building, RoomNo
FROM location
WHERE RoomId = (SELECT RoomId
                FROM faculty
				WHERE Name = 'Jones');






--Question 8:

SELECT l.Building, l.RoomNo
FROM location l, faculty f
WHERE l.RoomId = f.RoomId AND f.Name = 'Jones';






--Question 9:

SELECT Title
FROM course
WHERE CourseId = (SELECT CourseId
                  FROM crssection
				  WHERE CsId = (SELECT CsId
				                FROM registration
								WHERE MidTerm = 'F' AND StudentId = (SELECT StudentId
																     FROM student
																	 WHERE First = 'Deborah')));
				                        







--Question 10:

SELECT c.Title
FROM student s, registration r, crssection cr, course c
WHERE cr.CourseId = c.CourseId AND r.StudentId = s.StudentId 
AND cr.CsId = r.CsId AND s.First = 'Deborah' AND r.MidTerm = 'F';







--Question 11:

SELECT e.LName, e.FName, q.QualDesc
FROM employee e LEFT JOIN qualification q
USING (QualId)
ORDER BY e.LName;







--Question 12:

SELECT s.Last, s.FIRST
FROM student s, term t
WHERE s.StartTerm = t.TermId AND t.TermId = 'WN03';







--Question 13:

SELECT Last, First
FROM student
WHERE StartTerm IN (SELECT TermId
                   FROM term
				   WHERE TermId = 'WN03');










--Question 14:

SELECT c.CourseId, c.Section, f.Name
FROM crssection c LEFT JOIN faculty f
USING (FacultyId)
ORDER BY Name;







--Question 15:

SELECT Name
FROM faculty
WHERE RoomId IN (SELECT RoomId
                FROM location
				WHERE Building = 'Gandhi');







--Question 16:

SELECT Name
FROM faculty
WHERE RoomId IN (SELECT RoomId
                FROM location
				WHERE Building = 'Gandhi' AND RoomId = 17)
				AND Name <> 'Collins';







--Question 17:

SELECT First, Last
FROM student
WHERE FacultyId = (SELECT FacultyId
                   FROM department
				   WHERE DeptName = 'Accounting');



				   
SPOOL OFF;