SELECT 
    a.EMP_NAME,                      
    b.JOB_NAME,                      
    a.SALARY,                        
    a.SALARY * (1 + IFNULL(a.BONUS, 0)) * 12 AS "연봉" 
FROM employee a
JOIN job b ON (a.JOB_CODE = b.JOB_CODE)
JOIN sal_grade c ON (a.SAL_LEVEL = c.SAL_LEVEL)
WHERE a.SALARY > c.MIN_SAL; 