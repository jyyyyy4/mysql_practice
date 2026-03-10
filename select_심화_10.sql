SELECT 
    b.DEPT_TITLE,                                      
    SUM(a.SALARY * (1 + IFNULL(a.BONUS, 0)) * 12) AS "연봉 총합" 
FROM EMPLOYEE a
JOIN DEPARTMENT b ON (a.DEPT_CODE = b.DEPT_ID)
WHERE a.BONUS IS NOT NULL                          
GROUP BY b.DEPT_TITLE                                 
HAVING SUM(a.SALARY * (1 + IFNULL(a.BONUS, 0)) * 12) > 100000000; 