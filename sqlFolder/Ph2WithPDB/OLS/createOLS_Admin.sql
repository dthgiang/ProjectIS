---------------------------------

-- Use SYS to run this script ---

---------------------------------

--B1. Check if OLS is enable
SELECT VALUE FROM v$option WHERE parameter = 'Oracle Label Security'; 
SELECT status FROM dba_ols_status WHERE name = 'OLS_CONFIGURE_STATUS'; 

--B2: If it turn off - Turn on it
EXEC LBACSYS.CONFIGURE_OLS; 
EXEC LBACSYS.OLS_ENFORCEMENT.ENABLE_OLS; 

--B3: Shutdown & Restart 
shutdown IMMEDIATE; 
startup;

--B4: Check if PDB exist
select * from v$services; 
SELECT name FROM v$pdbs;

--B5: if not - create it by Oracle tool --> Database Configuration Assistant

--B6: If exist - open it
ALTER PLUGGABLE DATABASE QLDTPDB OPEN READ WRITE; 

--B7: switch to PDB - error MUST USE SQL PLUS TO ALTER
alter session set container= qldtpdb; 
--B8: UNLOCK LBACSYS 
ALTER USER lbacsys IDENTIFIED BY lbacsys ACCOUNT UNLOCK ;
SELECT SYS_CONTEXT('USERENV', 'CON_NAME') AS CURRENT_CONTAINER FROM DUAL;

--B9: Create ols admin
CREATE USER OLS_ADMIN IDENTIFIED BY 123 CONTAINER = CURRENT; 
GRANT CONNECT,RESOURCE TO OLS_ADMIN; 
GRANT UNLIMITED TABLESPACE TO OLS_ADMIN; 
GRANT SELECT ANY DICTIONARY TO OLS_ADMIN; 

--b10: grant admin privileges for ols_admin
GRANT EXECUTE ON sa_components TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON sa_user_admin TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON sa_label_admin TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON sa_policy_admin TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON sa_audit_admin TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON SA_SESSION TO OLS_ADMIN WITH GRANT OPTION; 
GRANT LBAC_DBA TO OLS_ADMIN; 
GRANT EXECUTE ON sa_sysdba TO OLS_ADMIN; 
GRANT EXECUTE ON to_lbac_data_label TO OLS_ADMIN; 
grant select, update, insert, delete on NHANVIEN to OLS_ADMIN;
grant create user to OLS_ADMIN;

grant connect to OLS_ADMIN with admin option;
--GRANT region_policy_DBA TO OLS_ADMIN; 



