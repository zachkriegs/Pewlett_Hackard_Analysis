SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e 
INNER JOIN titles as t 
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

SELECT COUNT(ut.title)
INTO retiring_titles
FROM unique_titles as ut
LEFT JOIN retiring_titles as rt 
ON (ut.title = rt.title)
GROUP BY ut.title
ORDER BY ut.title;

SELECT * FROM retiring_titles;



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt 
WHERE (rt.to_date = '9999-01-01' )
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;



SELECT ut.title, COUNT(ut.title) as "count"
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY "count" DESC;

SELECT * FROM retiring_titles;
























