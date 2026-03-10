SELECT 
    '차장급 이상' AS "직급 그룹",
    SUM(SALARY) AS "급여 합계"
FROM employee
WHERE JOB_CODE <= 'J4' 

UNION ALL

SELECT 
    '사원급' AS "직급 그룹",
    SUM(SALARY) AS "급여 합계"
FROM employee
WHERE JOB_CODE = 'J7';