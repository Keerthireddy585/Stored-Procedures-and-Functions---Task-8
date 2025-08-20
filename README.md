# Task 8: Stored Procedures and Functions

## Objective
The objective of this task is to learn how to modularize SQL logic using **Stored Procedures** and **Functions**.  
This helps in writing reusable SQL blocks, improving code organization, and enhancing problem-solving skills.

## Tools Used
- MySQL Workbench  
- Employees database 

## Database Schema Used
For this task, the **Employees** table was used:


```sql
CREATE TABLE Employees (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Name TEXT,
    Department TEXT,
    Age INTEGER,
    Salary INTEGER
);

INSERT INTO Employees (Name, Department, Age, Salary) VALUES
('Alice', 'HR', 28, 45000),
('Bob', 'Sales', 32, 55000),
('Charlie', 'Sales', 29, 48000),
('Diana', 'HR', 35, 52000),
('Ethan', 'IT', 24, 60000),
('Fiona', 'IT', 30, 62000),
('George', 'Marketing', 27, 50000);
```

## Stored Procedure and Function
- Stored Procedure: Getemployeesbydept
- Fetches ID, Name, and Department based on the given department name.

Usage Example:
```CALL Getemployeesbydept('HR');```

- Function: Yearlysalary
- Calculates yearly salary based on the monthly salary value.

Usage Example:
```SELECT Name, YearlySalary(Salary) AS yearlysalary
FROM Employees;```

## How to Run the Task
- Ensure the Employees table exists (from previous tasks).
- Open task8.sql in MySQL Workbench.
- Run the script to create the procedure and function.
- Execute the examples given above.
- Check the PNG screenshots uploaded in the repository for output.

## Key Learnings
- Benefits of modular SQL code for reusability and clarity
- Difference between Procedures and Functions
- Use of IN parameters in procedures
- Importance of RETURN in functions
- How to call and execute procedures/functions
- Benefits of modular SQL code for reusability and clarity
