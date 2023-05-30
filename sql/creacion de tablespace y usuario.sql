SELECT USERNAME FROM DBA_USERS;

CREATE TABLESPACE "P3AnalisisDeSistemasI" DATAFILE 'P3AnalisisDeSistemasI.DBF' SIZE 50M;

CREATE TEMPORARY TABLESPACE "P3AnalisisDeSistemasI_temp" TEMPFILE 'P3AnalisisDeSistemasI_temp.DBF' SIZE 50M;

--DBA
CREATE ROLE "C##ADMINISTRADOR_BD";

--Dar Permisos a rol
GRANT CREATE SESSION TO "C##ADMINISTRADOR_BD";
GRANT CREATE ANY TABLE TO "C##ADMINISTRADOR_BD";
GRANT CREATE ROLE TO "C##ADMINISTRADOR_BD";
GRANT CREATE USER TO "C##ADMINISTRADOR_BD";
GRANT CREATE VIEW TO "C##ADMINISTRADOR_BD";
GRANT CREATE ANY INDEX TO "C##ADMINISTRADOR_BD";
GRANT CREATE TRIGGER TO "C##ADMINISTRADOR_BD";
GRANT CREATE PROCEDURE TO "C##ADMINISTRADOR_BD";
GRANT CREATE SEQUENCE TO "C##ADMINISTRADOR_BD";

alter session set "_ORACLE_SCRIPT"=true;
--usuario opcional: "C##P2BDD2" misma contrase�a
create user P3AnalisisDeSistemasI identified by "12345" default tablespace "P3AnalisisDeSistemasI" temporary tablespace "P3AnalisisDeSistemasI_temp";
/*create user P3BaseDeDatos2 identified by 12345 default tablespace "P3BaseDeDatos2" temporary tablespace "P3BaseDeDatos2_temp";*/
grant connect, resource, dba to P3AnalisisDeSistemasI;
grant unlimited tablespace to P3AnalisisDeSistemasI;
grant "C##ADMINISTRADOR_BD" to P3AnalisisDeSistemasI;