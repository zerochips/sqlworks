-- update ���� --
SELECT * 
FROM departments
ORDER BY department_id DESC;

INSERT INTO departments 
VALUES (271, 'Sample_Dept', 200, 1700);

COMMIT;

-- departments���� department_name�� Sample_Dept�� 
-- manager_id�� 201, location_id�� 1800���� �����ϱ�
UPDATE departments
SET manager_id = 201,
    location_id = 1800;
--WHERE department_name = 'Sample_Dept';

ROLLBACK;
