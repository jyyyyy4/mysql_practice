SELECT
    a.EMP_NAME,
    b.JOB_NAME,
    a.DEPT_CODE,
    c.DEPT_TITLE
FROM employee a
JOIN department c ON (a.DEPT_CODE = c.DEPT_ID)
JOIN job b ON (a.JOB_CODE = b.JOB_CODE)
WHERE DEPT_TITLE LIKE '해외영업%';