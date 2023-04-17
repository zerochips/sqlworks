-- GROUP BY�� ROLLUP(), CUBE()
-- �μ����̺�(�μ���ȣ, �����̸�, �޿�)
CREATE TABLE department(
    dept_no    VARCHAR2(3),
    job_nm     VARCHAR2(30),
    salary     NUMBER(10)
);

-- �ڷ� ����
INSERT INTO department values ('100', '���ǻ�', 3300000);
INSERT INTO department values ('100', '������', 4300000);
INSERT INTO department values ('200', '���ǻ�', 5000000);
INSERT INTO department values ('200', '�����ͺм���', 4000000);
INSERT INTO department values ('200', '������', 6000000);

SELECT * FROM department;

-- �μ��� �޿� �Ѱ� ���ϱ�
SELECT dept_no,
SUM(salary)
FROM department
GROUP BY dept_no;

-- �μ��� �Ұ�, �Ѱ� ROLLUP �� ��� - GROUP BY ���
SELECT dept_no, job_nm,
SUM(salary)
FROM department
GROUP BY ROLLUP(dept_no, job_nm)
ORDER BY dept_no ASC;

-- �μ���, ������ �Ұ�, �Ѱ� : CUBE
SELECT dept_no, job_nm,
SUM(salary)
FROM department
GROUP BY CUBE(dept_no, job_nm)
ORDER BY dept_no;

-- �μ���, ������ �Ұ� : GROUPING SETS()
SELECT dept_no, job_nm,
SUM(salary)
FROM department
GROUP BY GROUPING SETS(dept_no, job_nm)
ORDER BY dept_no;





