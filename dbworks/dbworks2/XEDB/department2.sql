-- departments ���̺� �����ϱ� --
CREATE TABLE t_department AS
SELECT * FROM departments;

-- �ڷ� �˻�
SELECT * FROM t_department 
ORDER BY department_id DESC;

-- �ڷ� �߰�
INSERT INTO t_department VALUES (271, 'Sample_Dept', 200, 1700);

-- �ѹ� - ��� ���
ROLLBACK;

-- ��� ���� �Ϸ� : Ʈ�����
COMMIT;

-- �ڷ� ����

