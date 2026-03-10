SELECT 
    a.DEPT_TITLE,      
    COUNT(b.EMP_ID) AS "직원 수" 
FROM department a
LEFT JOIN employee b ON (a.DEPT_ID = b.DEPT_CODE) 
GROUP BY a.DEPT_TITLE
ORDER BY a.DEPT_TITLE;