-- WHERE Clause

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';



SELECT *
FROM employee_salary
WHERE salary <= 50000;

-- AND OR NOT -- LOGICAL OPERATORS

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND  age = 44) OR age > 55;

-- LIKE Statement
-- % and _ # % Will find things after the character put in and _ will find characters after with how many underscores are done. Can combine both.

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%';

