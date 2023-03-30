SELECT * FROM employees;

SELECT * FROM titles;

SELECT * FROM dept_emp;

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'

-- Retirement eligibility
SELECT first_name, last_name, emp_no
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info;

DROP TABLE retirement_info;

-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_titles
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');
-- Check the table
SELECT * FROM retirement_info;

-- Joining retirement_info and dept_emp tables
SELECT retirement_titles.emp_no,
    retirement_titles.first_name,
retirement_titles.last_name,
    titles.titles
    titles.from_date
    titles.to_date
FROM retirement_titles
LEFT JOIN titles
ON retirement_titles.emp_no = titles.emp_no;

SELECT rt.emp_no,
    rt.first_name,
rt.last_name,
    ti.to_date
FROM retirement_titles as rt
LEFT JOIN titles as deti
ON rt.emp_no = ti.emp_no;
SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;     

SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');

SELECT ep.emp_no,
    ep.first_name,
    ep.last_name,
ti.titles
ti.from_date
ti.to_date
INTO retirement_title 
FROM employees as ep
LEFT JOIN titles as ti
ON ep.emp_no = ti.emp_no
WHERE ep.birth_date = (BETWEEN '1952-01-01' AND '1955-12-31')

SELECT emp_no, first_name, last_name, title, from_date, to_date
FROM retirement_title
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')

SELECT * FROM retirement_titles;

SELECT retirement_titles.emp_no,
    retirement_titles.first_name,
retirement_titles.last_name,
    titles.titles
    titles.from_date
    titles.to_date
FROM retirement_titles
LEFT JOIN titles
ON retirement_titles.emp_no = titles.emp_no;

SELECT * FROM retirement_titles;

SELECT rt.emp_no,
    rt.first_name,
    rt.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles1
FROM retirement_titles as rt
LEFT JOIN titles as ti
ON rt.emp_no = ti.emp_no
WHERE ep.birth_date = (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT emp_no, first_name, last_name, title, from_date, to_date
FROM retirement_title
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');


SELECT * FROM retirement_titles;

SELECT rt.emp_no,
    rt.first_name,
    rt.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles1
FROM retirement_titles as rt
LEFT JOIN titles as ti
ON rt.emp_no = ti.emp_no

SELECT * FROM retirement_titles1;
SELECT * FROM retirement_titles;