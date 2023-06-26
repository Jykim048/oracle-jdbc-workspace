-- ����� ���� �����ϴ� ���� : ������ �������� �� �� �ִ� ����
-- [ǥ����] CREATE USER ������ IDENTIFIED BY ��й�ȣ;
CREATE USER kh IDENTIFIED BY kh;

-- ������ ������� ����� �������� �ּ����� ����(������ ����, ����)�ο�
-- [ǥ����] GRANT ���� 1, ���� 2, ... TO ������;
-- RESOURCE�� ��ü(����, ����, ����), ������(�Է�, ����, ��ȸ, ����) ����
-- CONNECT ������ ������ �ش� ������ ������ ���� ����
GRANT RESOURCE, CONNECT TO kh;

-- DDL 관련 계정
CREATE USER ddl IDENTIFIED BY ddl;
GRANT RESOURCE, CONNECT TO ddl;
GRANT UNLIMITED TABLESPACE TO ddl;