-- ROWNUM
SELECT ROWNUM, employee_id
    FROM employees
WHERE ROWNUM < 5;

-- ROWNUM�� SELECT�� �����ϴ�.(����, ���� �Ұ�)
DELETE FROM employees WHERE ROWNUM = 4;
