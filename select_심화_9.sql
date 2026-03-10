SELECT 
    b.DEPT_TITLE,               
    COUNT(*) AS "직원 수",        
    FLOOR(AVG(a.SALARY)) AS "평균 급여" 
FROM employee a
JOIN department b ON (a.DEPT_CODE = b.DEPT_ID)
WHERE a.SALARY IS NOT NULL     
GROUP BY b.DEPT_TITLE           
ORDER BY "평균 급여" DESC;        