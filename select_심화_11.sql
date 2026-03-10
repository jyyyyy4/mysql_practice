SELECT 
    a.EMP_NAME,     
    a.SALARY,      
    b.DEPT_TITLE    
FROM employee a
JOIN department b ON (a.DEPT_CODE = b.DEPT_ID)
JOIN location c ON (b.LOCATION_ID = c.LOCAL_CODE)
WHERE c.NATIONAL_CODE = 'KO'            
  AND a.SALARY >= (                  
      SELECT AVG(SALARY) 
      FROM employee
  );