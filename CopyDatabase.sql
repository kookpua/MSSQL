--�ȷ���Ŀ�����ݿ�DB
USE master;
GO 
EXEC sp_detach_db
    @dbname = N'DB';
GO


--�������һ��Ŀ����DB2
--copy E:\MSSQL\Data\DB.mdf E:\MSSQL\Data\DB2.mdf
--copy E:\MSSQL\Data\DB.ldf E:\MSSQL\Data\DB2.ldf

--����DB ��DB2
USE master;
GO
CREATE DATABASE SampoECNew
    ON (FILENAME = 'E:\MSSQL\Data\DB.mdf'),
       (FILENAME = 'E:\MSSQL\Data\DB.ldf')
    FOR ATTACH;
GO
CREATE DATABASE SampoECNew32
    ON (FILENAME = 'E:\MSSQL\Data\DB2.mdf'),
       (FILENAME = 'E:\MSSQL\Data\DB2.ldf')
    FOR ATTACH;
GO
