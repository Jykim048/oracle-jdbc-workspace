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

-- JDBC 관련 계정
CREATE USER jdbc IDENTIFIED BY jdbc;
GRANT RESOURCE, CONNECT TO jdbc;
GRANT UNLIMITED TABLESPACE TO jdbc;


CREATE USER EMP IDENTIFIED BY EMP0123;

CREATE USER sample IDENTIFIED BY sample;
GRANT RESOURCE, CONNECT TO sample;
GRANT UNLIMITED TABLESPACE TO sample;

CREATE USER TEAM4 IDENTIFIED BY TEAM4;
GRANT RESOURCE, CONNECT TO TEAM4;
GRANT UNLIMITED TABLESPACE TO TEAM4;