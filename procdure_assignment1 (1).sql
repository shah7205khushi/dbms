create database assignment;
use assignment;
drop table department;

-- Create the department table
CREATE TABLE department (
  department_id varchar(10) PRIMARY KEY,
  department_name VARCHAR(50),
  location varchar(20)
);
-- Insert sample data into the Departments table
INSERT INTO department(department_id, department_name, location)
VALUES
  (101, 'HR', 'New York'),
  (102, 'Finance', 'Chicago'),
  (103, 'Marketing', 'Los Angeles'),
  (104, 'IT', 'San Francisco'),
  (105, 'Sales', 'Miami');
/*
1>.
rite a PL/SQL block that selects the maximum department number in the department table
and store it in a SQL*PLUS variable. And print the results to screen.
*/

-- ------------------------------------ procedure ---------------------------------------------
CREATE DEFINER=`root`@`localhost` PROCEDURE `depart_max`(out max_depatment_no int)
BEGIN
-- Declare a MySQL user-defined variable


-- Select the maximum department number and store it in the variable
SELECT MAX(department_id) INTO max_depatment_no FROM department;

END

call depart_max(@max_depatment_no);
select @max_depatment_no;

/*
2>.
Create a PL/SQL block to insert a new department number into the Departments table. Use
maximum dept number fetched from above and adds 10 to it. Use SQL*PLUS substitution
variable for department name. Leave the location AS null
*/

-- ------------------------------------ procedure ---------------------------------------------
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_Dep`()
BEGIN
set @dept_name='medical';
select max(department_id)into @dep_id from department;
set @dep_id = @dep_id+10;
select @dep_id;

insert into department(department_id, department_name) VALUES (@dep_id,@dept_name);
select * from department;

  -- Delete the department by department_id
  DELETE FROM department WHERE department_id = @dep_id;
  select * from department;
END

call insert_Dep();
select * from department;


/*
3>.Create a PL/SQL block to update the location for an existing department. Use substitution
variable for dept no. and dept location.
*/

-- ------------------------------------ procedure ---------------------------------------------
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_location`(in d_id int,in new_location varchar(20))
BEGIN

update department
set location = new_location
where department_id=d_id;
END
call update_location('102','surat');
select * from department;	

/*
4>.alterCreate a PL/SQL Block to delete the department created in exercise 2. Print to the screen
the number of rows affected.*/

-- ------------------------------------ procedure ---------------------------------------------
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteDepartment`()
BEGIN
  DECLARE affectedRows INT;

select max(department_id)into @dep_id from department;
set @dep_id = @dep_id+20;
select @dep_id;

 
  -- Delete the department by department_id
  DELETE FROM department WHERE department_id = @dep_id;
  
  -- Get the number of affected rows
  SET affectedRows = ROW_COUNT();
  
  -- Print the number of rows affected
  SELECT CONCAT('Number of rows affected: ', affectedRows) AS Message;

end

call DeleteDepartment();
call InsertAndDeleteDepartment();
 select @deptid;
 
 
/*
5>
*/
-- Create a sample table named "employees"
CREATE TABLE employees (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  employee_name VARCHAR(255) NOT NULL,
  salary_grade INT NOT NULL
);
-- Insert some sample data
INSERT INTO employees (employee_name, salary_grade) VALUES
  ('John Doe', 3), -- Employee with grade 3
  ('Jane Smith', 2), -- Employee with grade 2
  ('Alice Johnson', 4), -- Employee with grade 4
  ('Bob Brown', 1); -- Employee with grade 1
  
  
-- ------------------------------------ procedure ---------------------------------------------
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateNetSalary`(
  IN empName VARCHAR(255),
  IN basicSalary DECIMAL(10, 2)
)
BEGIN
  DECLARE HRA DECIMAL(10, 2);
  DECLARE DA DECIMAL(10, 2);
  DECLARE PF DECIMAL(10, 2);
  DECLARE netSalary DECIMAL(10, 2);
  
  -- Calculate HRA and DA
  SET HRA = 0.31 * basicSalary;
  SET DA = 0.15 * basicSalary;

  -- Calculate PF based on basic salary range
  IF basicSalary < 3000 THEN
    SET PF = 0.05 * basicSalary;
  ELSEIF basicSalary >= 3000 AND basicSalary < 5000 THEN
    SET PF = 0.07 * basicSalary;
  ELSE
    SET PF = 0.08 * basicSalary;
  END IF;

  -- Calculate net salary
  SET netSalary = basicSalary + HRA + DA - PF;

  -- Display the result
  SELECT empName AS 'Employee Name', PF AS 'PF', netSalary AS 'Net Salary';

END
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q5`(in employee_custome varchar(20), in basic_salary decimal(10,2))
BEGIN

declare HRA decimal(10,2);
declare DA decimal(10,2);
declare PF decimal(10,2);
declare net_salary  decimal(10,2);

set HRA = 31 * basic_salary /100;
set DA = 15 * basic_salary / 100;

	if basic_salary <3000 then
		set PF = basic_salary * 5 / 100;
	elseif basic_salary < 3000 and basic_salary > 5000 then
		set PF = basic_salary * 7 / 100;
	  ELSE
    SET PF = 0.08 * basic_salary;
	end if;

    set net_salary = basic_salary + HRA + DA - PF;
    
    select employee_custome as 'Employee Name' , PF AS 'Provident Found', net_salary AS 'NET Salary';
END
*/
-- ------------------q-5 call------------------------
call Q5('aasima',40000);

-- ======================================================================================================


/*
6. Write a PL/SQL block to find the salary grade of the specified employee.
If grade is 1 display ‘the employee is junior engineer’
If grade is 2 display ‘the employee is engineer’
If grade is 3 display ‘the employee is lead engineer’
If grade is 4 display ‘the employee is Manager’
If grade is 5 display ‘the employee is Project manager’
(Use case expression)
*/

-- ------------------------------------ procedure ---------------------------------------------

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeeGrade`(
  IN empName VARCHAR(255),
  OUT jobTitle VARCHAR(255)
)
BEGIN
  DECLARE empGrade INT;

  -- Find the salary grade for the specified employee
  SELECT salary_grade
  INTO empGrade
  FROM employees
  WHERE employee_name = empName;

  -- Determine the job title based on the salary grade using CASE expression
  CASE empGrade
    WHEN 1 THEN SET jobTitle = 'The employee is Junior Engineer' ;(select * from employees where salary_grade=1);
    WHEN 2 THEN SET jobTitle = 'The employee is Engineer';(select * from employees where salary_grade=2);
    WHEN 3 THEN SET jobTitle = 'The employee is Lead Engineer';(select * from employees where salary_grade=3);
    WHEN 4 THEN SET jobTitle = 'The employee is Manager';(select * from employees where salary_grade=4);
    WHEN 5 THEN SET jobTitle = 'The employee is Project Manager';(select * from employees where salary_grade=5);
    ELSE SET jobTitle = 'The employee has an unknown grade';
  END CASE;
END
call GetEmployeeGrade('Alice Johnson',@jobTitle);
select @jobTitle;

/*
7>.
Wrtie a PL/SQL block to award an employee with the bonus.
Bonus is 15% of commission drawn by the employee.
If the employee does not earn any commission then display a message that ‘employee does
not earn any commission’. Otherwise add bonus to the salary of the employee. The block
should accept an input for the employee number.*/
drop  table if exists emp_salary; 
create table emp_salary(
	emp_id int primary key,
    slary decimal(10,2),
    commission decimal(10,2)
);
INSERT INTO emp_salary (emp_id, slary, commission)
VALUES
    (1, 50000.00, 1000.00),
    (2, 60000.00, NULL), -- Commission is set to NULL for this employee
    (3, 55000.00, 750.00),
    (4, 62000.00, 1200.00),
    (5, 53000.00, NULL); -- Commission is set to NULL for this employee

-- ------------------------------------ procedure ---------------------------------------------
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`(in em_id int)
BEGIN
	declare commission_amount decimal(10,2);
    declare bonus decimal(10,2);
    
    select commission into commission_amount from emp_salary where emp_id=em_id;
    
    if commission_amount is null then
    
    select 'employee does not earn any commition' as massage;
    else 
    set bonus = commission_amount * 15/100;
    
    update emp_salary set slary = slary + bonus where emp_id=em_id ; 
    
    select concat(bonus ,'bonus is earn by' ,em_id);
     end if;
END

call new_procedure(3);


/*
8>.
Write a PL/SQL block which displays the department name, total no of employees in the
department, avg salary of the employees in the department for all the departments from
department 10 to department 40 in the Dept table.If no employees are working in
the department ,then display a message that no employees are working in that department.

*/
drop table if exists Dept;
CREATE TABLE Dept (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10, 2),
    dept_no INT,
    department_name VARCHAR(50)
);
-- Insert data into the Dept table with department names
INSERT INTO Dept (emp_id, emp_name, salary, dept_no, department_name)
VALUES
    (1, 'John', 50000.00, 10, 'HR'),
    (2, 'Jane', 55000.00, 10, 'HR'),
    (3, 'Bob', 60000.00, 20, 'HR'),
    (4, 'Alice', 52000.00, 20, 'Finance'),
    (5, 'Mike', 48000.00, 30, 'Marketing'),
    (6, 'Sara', 53000.00, 30, 'Marketing'),
    (7, 'David', 55000.00, 40, 'Sales'),
    (8, 'Emily', 60000.00, 40, 'Sales');
    
-- ------------------------------------ procedure ---------------------------------------------

CREATE DEFINER=`root`@`localhost` PROCEDURE `newprocedure`(in dep_no int )
BEGIN
declare dep_name varchar(10);
declare total_emp int;
declare ave_salary decimal(10,2);

			if dep_no <=40 then 
				select department_name into dep_name from Dept where dept_no=dep_no;
				select count(emp_id) into total_emp from Dept where dept_no=dep_no;  
				
			if total_emp > 0 then
				select avg(salary) into ave_salary from Dept where dept_no=dep_no;  
                   -- Display department information
				SELECT CONCAT('Department: ', dep_name) AS Department,
                   CONCAT('Total Employees: ', total_emp) AS TotalEmployees,
                   CONCAT('Average Salary: $', ave_salary) AS AverageSalary;
			ELSE
				-- Display a message if no employees are working in the department
				SELECT CONCAT('No employees are working in Department: ', dep_name) AS DepartmentInfo;

			end if;

			end if;
ENd

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `q8`()
BEGIN

    DECLARE dept_no INT;
     DECLARE emp_count INT;
        DECLARE avg_salary DECIMAL(10, 2);
        DECLARE dept_name VARCHAR(50);
        
    SET dept_no = 50;
    
    WHILE dept_no <= 40 DO
       
        -- Get department name
        SELECT department_name INTO dept_name FROM Dept WHERE dept_no = dept_no;
        
        -- Get the count of employees in the department
        SELECT COUNT(*) INTO emp_count FROM Dept WHERE dept_no = dept_no;
        
        IF emp_count > 0 THEN
            -- Calculate the average salary in the department
            SELECT AVG(salary) INTO avg_salary FROM Dept WHERE dept_no = dept_no;
            
            -- Display department information
            SELECT CONCAT('Department: ', dept_name) AS Department,
                   CONCAT('Total Employees: ', emp_count) AS TotalEmployees,
                   CONCAT('Average Salary: $', avg_salary) AS AverageSalary;
        ELSE
            -- Display a message if no employees are working in the department
            SELECT CONCAT('No employees are working in Department: ', dept_name) AS DepartmentInfo;
        END IF;
        
        SET dept_no = dept_no + 10;
    END WHILE;
END*/
call newprocedure(10);
call q8();

/*
9>'
*/

CREATE TABLE employee(
    employee_number INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT
);
-- Insert sample data into the employees table
INSERT INTO employee (employee_number, employee_name, salary, department_id)
VALUES
    (101, 'John', 60000.00, 1),
    (102, 'Jane', 55000.00, 1),
    (201, 'Bob', 65000.00, 2),
    (202, 'Alice', 62000.00, 2),
    (301, 'Mike', 48000.00, 3),
    (302, 'Sara', 53000.00, 3),
    (401, 'David', 55000.00, 4),
    (402, 'Emily', 60000.00, 4);


-- ------------------------------------ procedure ---------------------------------------------

CREATE DEFINER=`root`@`localhost` PROCEDURE `CompareEmployeeSalary`(IN emp_number INT)
BEGIN
    DECLARE emp_salary DECIMAL(10, 2);
    DECLARE dept_avg_salary DECIMAL(10, 2);
    DECLARE dept_id INT;
    
    -- Get the employee's salary
    SELECT salary INTO emp_salary FROM employee WHERE employee_number = emp_number;
    
    -- Get the department ID where the employee works
    SELECT department_id INTO dept_id FROM employee  WHERE employee_number = emp_number;
    
    -- Calculate the average salary of the department
    SELECT AVG(salary) INTO dept_avg_salary FROM employee WHERE department_id = dept_id;
    select dept_avg_salary;
    -- Compare the employee's salary with the department average
    IF emp_salary > dept_avg_salary THEN
        SELECT 'Employee''s salary is more than average salary' AS message;
    ELSE
        SELECT 'Employee''s salary is less than average salary' AS message;
    END IF;

END
call CompareEmployeeSalary(101);

/* 10. Create a procedure that deletes rows from the emp table. It should accept 1 parameter, job;
only delete the employee’s with that job. Display how many employees were deleted.
*/
CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_job VARCHAR(50)
);

-- Insert sample data into the emp table
INSERT INTO emp (emp_id, emp_name, emp_job)
VALUES
    (1, 'John', 'Manager'),
    (2, 'Jane', 'Manager'),
    (3, 'Bob', 'Developer'),
    (4, 'Alice', 'Developer'),
    (5, 'Mike', 'Analyst'),
    (6, 'Sara', 'Analyst'),
    (7, 'David', 'Designer'),
    (8, 'Emily', 'Designconditional_statementdisplay_tableer');

-- ------------------------------------ procedure ---------------------------------------------

select * from emp;
call DeleteEmployeesByJob('Manager');


/*
11>. Change the above procedure so that it returns the number of employees removed via an
OUT parameter.
*/
-- ------------------------------------ procedure ---------------------------------------------


CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteEmployeesByJobWithCount`(IN job_title VARCHAR(50), OUT num_deleted INT)
BEGIN
    -- Initialize the OUT parameter
    SET num_deleted = 0;
    
    -- Delete employees with the specified job
    DELETE FROM emp WHERE emp_job = job_title;
    
    -- Get the number of deleted employees
    SELECT ROW_COUNT() INTO num_deleted;
END

call DeleteEmployeesByJobWithCount('Analyst',@num_deleted);
select @num_deleted;
