--Exercise7_Script.sql
--Name: Marissa Gonçalves
--Date: October 22, 2018


CONNECT scott/tiger;
SET LINESIZE 200;
SET PAGESIZE 50;
SET ECHO ON;



SPOOL "D:\Semester III\Database I\Exercises\Exercise7\Exercise7_Spool.txt";




--Question 1:

START "D:\Marissa\customerScript.sql"



--Question 2:

CREATE SEQUENCE customer_customer_id_seq
INCREMENT BY 1
START WITH 10000;




--Question 3:

INSERT INTO customer VALUES (customer_customer_id_seq.NEXTVAL, 'Smith', 'John', '514-744-7850', 'smithj@anywhere.com');





--Question 4:

SELECT * FROM customer;

--The ID is 10000.





--Question 5:

SELECT CUSTOMER_CUSTOMER_ID_SEQ.CURRVAL FROM DUAL;






--Question 6:

INSERT INTO customer VALUES (customer_customer_id_seq.NEXTVAL, 'Wright', 'Sarah', '514-755-6630', 'wrights@anywhere.com');





--Question 7:

SELECT * FROM customer;

--The ID is 10001.





--Question 8:

SELECT CUSTOMER_CUSTOMER_ID_SEQ.CURRVAL FROM DUAL;






--Question 9:

ALTER SEQUENCE CUSTOMER_CUSTOMER_ID_SEQ
INCREMENT BY 10;





--Question 10:

INSERT INTO customer VALUES (customer_customer_id_seq.NEXTVAL, 'Patel', 'Diana', '514-766-3090', 'pateld@anywhere.com');






--Question 11:

SELECT * FROM customer;

--The ID is 10011.



--Question 12:

SELECT CUSTOMER_CUSTOMER_ID_SEQ.CURRVAL FROM DUAL;





--Question 13:

DROP SEQUENCE CUSTOMER_CUSTOMER_ID_SEQ;






--Question 14:

SPOOL OFF;