USE Employees;

DELIMITER //
CREATE PROCEDURE Getemployeesbydept (IN deptName VARCHAR(50))

BEGIN
	SELECT ID, Name, Department
	FROM Employees
    WHERE Department = deptName;
END //
DELIMITER ;

CALL Getemployeesbydept('HR');

-- Function
DELIMITER //
CREATE FUNCTION Yearlysalary(monthlysalary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
	RETURN monthlysalary*12;
END //
DELIMITER ;

SELECT Name, Yearlysalary(Salary) AS yearlysalary
FROM Employees;


