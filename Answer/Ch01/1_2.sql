-- [PostgreSQL] [MySQL]
ALTER TABLE Addressbook ADD COLUMN postal_code CHAR(8) NOT NULL;

ALTER TABLE Addressbook ADD postoal_code CHAR(8) NOT NULL;

-- [Oracle]
ALTER TABLE Addressbook ADD (postal_code CHAR(8)) NOT NULL;


-- [SQL Server]
ALTER TABLE Addressbook ADD postal_code CHAR(8) NOT NULL;


/*
 [DB2] �޷����ӡ�
 ��DB2�У����ҪΪ���ӵ����趨NOT NULLԼ����
 ��Ҫ����������ָ��Ĭ��ֵ������ɾ��NOT NULLԼ����
 ������޷��������С�

*/
-- [DB2 ������]
ALTER TABLE Addressbook ADD COLUMN postal_code CHAR(8) NOT NULL DEFAULT '0000-000';