--Exercise10_Script.sql
--Name: Marissa Gonçalves
--Date: October 22, 2018


CONNECT scott/tiger;
SET LINESIZE 180;
SET PAGESIZE 40;
SET ECHO ON;


START "D:\Marissa\indo_n2.sql"


SPOOL "D:\Semester III\Database I\Exercises\Exercise10\Exercise10_Spool.txt";




--Question 1:

SELECT DeptName
FROM dept
WHERE DeptId = (SELECT DeptId
                FROM employee
				WHERE FName = 'Jinku' AND LName = 'Shaw');


				
SELECT DeptName
FROM dept d, employee e
WHERE d.DeptId = e.DeptId AND e.FName = 'Jinku' AND e.LName = 'Shaw';
				

				
				
				
				
--Question 2:

SELECT FName, LName
FROM employee
WHERE EmployeeId = (SELECT Supervisor
                    FROM employee
					WHERE EmployeeId = 433);


					
SELECT FNAME, LNAME
FROM EMPLOYEE E, EMPLOYEE S
WHERE E.EMPLOYEEID = S.SUPERVISOR AND E.EMPLOYEEID = 433;

					
					

					
--Question 3:

SELECT FName, LName
FROM employee
WHERE QualId = (SELECT QualId
                FROM employee
				WHERE FName = 'John' AND LName = 'Smith')
				AND FName <> 'John' AND LName <> 'Smith';




				

--Question 4:

SELECT FName, LName
FROM employee
WHERE PositionId = (SELECT PositionId
                    FROM employee
					WHERE FName = 'Larry' AND LName = 'Houston')
                    AND FName <> 'Larry' AND LName <> 'Houston';





--Question 5:

SELECT DeptName
FROM dept
WHERE DeptId = (SELECT DeptId
                FROM employee 
				GROUP BY DeptId
				HAVING COUNT(*) > (SELECT COUNT(*)
								   FROM employee
								   WHERE DeptId = 20));


											

--Question 6:

SELECT FName, LName
FROM employee
WHERE HireDate < (SELECT HireDate
                  FROM employee
				  WHERE FName = 'Larry' AND LName = 'Houston');






--Question 7:

SELECT FName, LName
FROM employee
WHERE DeptId = (SELECT DeptId
                FROM dept
				WHERE DeptName = 'Sales');







--Question 8:

SELECT EmployeeId, DependentId, DepDOB, Relation
FROM dependent
WHERE EmployeeId IN (SELECT EmployeeId
                     FROM employee
				     WHERE DeptId = (SELECT DeptId
                                     FROM dept
				                     WHERE DeptName = 'Finance'));


								
								
SELECT EmployeeId, DependentId, DepDOB, Relation
FROM dependent d, employee e, dept de
WHERE d.EmployeeId = e.EmployeeId AND e.DeptId = de.DeptId AND de.DeptName = 'Finance';






--Question 9:

SELECT Name, Phone
FROM faculty
WHERE FacultyId = (SELECT FacultyId
                   FROM student
				   WHERE Last = 'Diaz');







--Question 10:

SELECT * 
FROM location
WHERE RoomType = (SELECT RoomType
                  FROM room
				  WHERE RoomDesc = 'Classroom');





SPOOL OFF;