-- ��й�ȣ ���� --
ALTER USER system IDENTIFIED BY 54321;

-- ��й�ȣ ��ȿ�Ⱓ - 180�� --
SELECT * FROM dba_profiles WHERE profile='DEFAULT' and resource_name='PASSWORD_LIFE_TIME';

