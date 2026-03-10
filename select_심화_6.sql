SELECT
    a.EMP_NAME,
    b.DEPT_TITLE,
    c.LOCAL_NAME,
    d.NATIONAL_NAME
FROM    
    employee a

JOIN department b ON (a.DEPT_CODE = b.DEPT_ID)
JOIN location c ON (b.LOCATION_ID = c.LOCAL_CODE)
JOIN national d ON (c.NATIONAL_CODE = d.NATIONAL_CODE )
WHERE d.NATIONAL_CODE IN ('KO','JP');
