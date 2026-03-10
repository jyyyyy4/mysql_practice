-- Active: 1773043350288@@127.0.0.1@3306@employeedb
SELECT
    a.EMP_ID,
    a.EMP_NAME,
    b.DEPT_TITLE
FROM employee a
JOIN department b ON (a.DEPT_CODE = b.DEPT_ID)
WHERE a.EMP_NAME LIKE '%형%';