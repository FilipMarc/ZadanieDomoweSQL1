
1.SELECT first_name, last_name, hire_date FROM employees WHERE hire_date BETWEEN '1990-01-01' AND NOW();

2.SELECT COUNT(employees.emp_no) FROM employees WHERE gender='F';

3.SELECT e.first_name, e.last_name, d.dept_name FROM employees e JOIN  dept_emp de ON e.emp_no = de.emp_no
  JOIN departments d ON de.dept_no = d.dept_no;

4. SELECT first_name, last_name, max(birth_date) FROM employees WHERE gender ='F';
   SELECT first_name, last_name, birth_date FROM employees WHERE gender ='F' order by birth_date DESC LIMIT 1;

5. SELECT first_name, last_name, title FROM employees, titles WHERE employees.emp_no = titles.emp_no
    AND titles.emp_no = 10009;

6. SELECT first_name, last_name, t.title FROM employees e JOIN titles t
    ON e.emp_no=t.emp_no and t.to_date > NOW();

7. SELECT e.first_name, e.last_name, s.salary FROM salaries s JOIN employees e
    ON s.emp_no=e.emp_no WHERE salary =  (SELECT MAX(salary) FROM salaries);

10. SELECT distinct title FROM titles ;