---------------
---JOINS
---------------

---creating first table
CREATE TABLE myEMPLOYEES (employee_ID INT, first_name VARCHAR(20), last_name VARCHAR(20))
	INSERT INTO myEMPLOYEES VALUES (1, 'Jim', 'Halpert')
	INSERT INTO myEMPLOYEES VALUES (2, 'Pam', 'Beesly')
	INSERT INTO myEMPLOYEES VALUES (3, 'Dwite', 'Shrute')

---creating second table
CREATE TABLE mySALARIES (employee_ID INT, salary FLOAT)
	INSERT INTO mySALARIES VALUES (1, 10000)
	INSERT INTO mySALARIES VALUES (2, 9000)
	INSERT INTO mySALARIES VALUES (3, 8000)

---showing both tables
SELECT * FROM myEMPLOYEES
SELECT * FROM mySALARIES

---INNER JOIN
SELECT X.employee_ID, X.first_name, X.last_name, Y.salary 
FROM myEMPLOYEES X INNER JOIN mySALARIES Y
ON X.employee_ID = Y.employee_ID
---END OF INNER JOIN

--- creating a third table
CREATE TABLE myPHONES (employee_ID INT, phone_Number INT)
	INSERT INTO myPHONES VALUES(1, 011188445)
	INSERT INTO myPHONES VALUES(2, 011166645)

---LEFT OUTER JOIN
SELECT A.first_name, A.last_name, B.phone_Number
FROM myEMPLOYEES A LEFT JOIN myPHONES B 
ON A.employee_ID = B.employee_ID
---END OF LEFT OUTER JOIN

---creating fourth table
CREATE TABLE myPARKING (employee_ID INT, parking_spot VARCHAR(20))
	INSERT INTO myPARKING VALUES(1, 'a1')
	INSERT INTO myPARKING VALUES (2, 'A3')
	DELETE FROM myPARKING where employee_ID = 2 OR employee_ID = 4


---RIGHT OUTER JOIN 
SELECT A.parking_spot, B.first_name, B.last_name
FROM myPARKING A RIGHT JOIN myEMPLOYEES B 
ON A.employee_ID = B.employee_ID
---END OF RIGHT OUTER JOIN

SELECT * FROM myEMPLOYEES
SELECT * FROM mySALARIES
SELECT * FROM myPHONES
SELECT * FROM myPARKING

---FULL OUTER JOIN with all the 4 tables
SELECT A.employee_ID, A.first_name, A.last_name, B.salary, C.phone_Number, D.parking_spot
FROM myEMPLOYEES A FULL OUTER JOIN mySALARIES B ON A.employee_ID = B.employee_ID 
	FULL OUTER JOIN myPHONES C ON B.employee_ID = C.employee_ID
	FULL OUTER JOIN myPARKING D ON A.employee_ID = D.employee_ID
---END OF FULL OUTER JOIN

---CROSS JOIN



	 