SELECT
    a.EMP_NAME,
    a.BONUS,
    b.DEPT_TITLE,
    c.LOCAL_NAME
FROM employee a
JOIN department b ON (a.DEPT_CODE = b.DEPT_ID)
JOIN location c ON (b.LOCATION_ID = c.LOCAL_CODE)
WHERE a.BONUS IS NOT NULL;