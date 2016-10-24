--先分离目标数据库DB
USE master;
GO 
EXEC sp_detach_db
    @dbname = N'DB';
GO


--在命令复制一份目标库叫DB2
--copy E:\MSSQL\Data\DB.mdf E:\MSSQL\Data\DB2.mdf
--copy E:\MSSQL\Data\DB.ldf E:\MSSQL\Data\DB2.ldf

--创建DB 和DB2
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
