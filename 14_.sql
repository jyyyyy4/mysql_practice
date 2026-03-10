-- Active: 1773043350288@@127.0.0.1@3306@employeedb
SELECT
    EMP_ID,
    EMP_NO,
    DEPT_CODE
FROM employee
WHERE EMP_NAME LIKE '%하%';