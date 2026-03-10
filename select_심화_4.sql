SELECT
    a.EMP_NAME,
    b.JOB_NAME,
    c.DEPT_TITLE,
    d.LOCAL_NAME
FROM employee a
JOIN job b ON (a.JOB_CODE = b.JOB_CODE)
JOIN department c ON (a.DEPT_CODE = c.DEPT_ID)
JOIN location d ON (c.LOCATION_ID = d.LOCAL_CODE)
WHERE c.DEPT_ID = 'D2';