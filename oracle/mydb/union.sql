-- ���� ����
-- ���̺�(����) ����
-- ���ϱ�(unino)
-- ����(minus)
CREATE TABLE job(
    job_id  VARCHAR2(10),
    salary  NUMBER(5)   -- �޷��� �Է�
);

INSERT INTO job VALUES ('manager', 1300);
INSERT INTO job VALUES ('manager', 1500);
INSERT INTO job VALUES ('manager', 1900);
INSERT INTO job VALUES ('helper', 1000);
INSERT INTO job VALUES ('helper', 1500);
INSERT INTO job VALUES ('helper', 2500);

-- job ��ü�� ������ �޿��� ���հ� ���ϱ�
select count(*) ����, sum(salary) ���հ�
from job;

-- ���� ���̵� ������ �޿��� ���հ� ���ϱ�
select job_id, count(*) ����, sum(salary) ���հ�
from job
group by job_id;

-- ���� ���̵� ������ �޿��� �ִ밪 ���ϱ�
select job_id, count(*), max(salary) �ִ�޿�
from job
group by job_id;

-- ���� ���̵� ������ �޿��� �ּҰ� ���ϱ�
select job_id, count(*), min(salary) �ּұ޿�
from job
group by job_id;

-- ���� ���̵� ������ �޿��� �ִ�޿�, �ּұ޿� ���ϱ� 1
select job_id, count(*), max(salary), min(salary)
from job
group by job_id;

-- ���� ���̵� ������ �޿��� �ִ�޿�, �ּұ޿� ���ϱ� 2(UNION)
select job_id, count(*), max(salary) �ִ�޿�
from job
group by job_id
UNION
select job_id, count(*), min(salary) �ּұ޿�
from job
group by job_id;

select job_id, count(*), max(salary) �ִ�޿�
from job
group by job_id
UNION ALL
select job_id, count(*), min(salary) �ּұ޿�
from job
group by job_id;


COMMIT;

SELECT * FROM job;