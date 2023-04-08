

ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
create user GOD identified by 123;

-- USER SQL
ALTER USER "GOD"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;

-- QUOTAS

-- ROLES
GRANT "DV_MONITOR" TO "GOD" ;
GRANT "EM_EXPRESS_ALL" TO "GOD" ;
GRANT "WM_ADMIN_ROLE" TO "GOD" ;
GRANT "OLAP_USER" TO "GOD" ;
GRANT "DV_SECANALYST" TO "GOD" ;
GRANT "MAINTPLAN_APP" TO "GOD" ;
GRANT "RECOVERY_CATALOG_OWNER_VPD" TO "GOD" ;
GRANT "AVTUNE_PKG_ROLE" TO "GOD" ;
GRANT "GDS_CATALOG_SELECT" TO "GOD" ;
GRANT "SCHEDULER_ADMIN" TO "GOD" ;
GRANT "PROVISIONER" TO "GOD" ;
GRANT "QLTV_DOCGIA" TO "GOD" ;
GRANT "APPLICATION_TRACE_VIEWER" TO "GOD" ;
GRANT "LBAC_DBA" TO "GOD" ;
GRANT "QLTV_THUTHU" TO "GOD" ;
GRANT "DV_DATAPUMP_NETWORK_LINK" TO "GOD" ;
GRANT "RLLAB3_GIAMDOC" TO "GOD" ;
GRANT "GSMUSER_ROLE" TO "GOD" ;
GRANT "GATHER_SYSTEM_STATISTICS" TO "GOD" ;
GRANT "LOGSTDBY_ADMINISTRATOR" TO "GOD" ;
GRANT "DBJAVASCRIPT" TO "GOD" ;
GRANT "GSM_POOLADMIN_ROLE" TO "GOD" ;
GRANT "HS_ADMIN_ROLE" TO "GOD" ;
GRANT "XS_SESSION_ADMIN" TO "GOD" ;
GRANT "RLLAB3_TEMP" TO "GOD" ;
GRANT "JAVADEBUGPRIV" TO "GOD" ;
GRANT "RL_CUSTOM" TO "GOD" ;
GRANT "CONNECT" TO "GOD" ;
GRANT "ACCHK_READ" TO "GOD" ;
GRANT "SODA_APP" TO "GOD" ;
GRANT "BDSQL_ADMIN" TO "GOD" ;
GRANT "GSMADMIN_ROLE" TO "GOD" ;
GRANT "JAVAUSERPRIV" TO "GOD" ;
GRANT "XDB_SET_INVOKER" TO "GOD" ;
GRANT "JAVA_ADMIN" TO "GOD" ;
GRANT "DBFS_ROLE" TO "GOD" ;
GRANT "PDB_DBA" TO "GOD" ;
GRANT "RDFCTX_ADMIN" TO "GOD" ;
GRANT "RL_WIBU" TO "GOD" ;
GRANT "CDB_DBA" TO "GOD" ;
GRANT "JAVASYSPRIV" TO "GOD" ;
GRANT "GSMROOTUSER_ROLE" TO "GOD" ;
GRANT "HS_ADMIN_SELECT_ROLE" TO "GOD" ;
GRANT "AUDIT_VIEWER" TO "GOD" ;
GRANT "RLLAB3_DATAENTRY" TO "GOD" ;
GRANT "RESOURCE" TO "GOD" ;
GRANT "DV_OWNER" TO "GOD" ;
GRANT "RL_TRUONGPHONG" TO "GOD" ;
GRANT "RL_WIBU1" TO "GOD" ;
GRANT "DATAPATCH_ROLE" TO "GOD" ;
GRANT "RL_WIBU4" TO "GOD" ;
GRANT "RL_WIBU5" TO "GOD" ;
GRANT "EXP_FULL_DATABASE" TO "GOD" ;
GRANT "RL_EMP" TO "GOD" ;
GRANT "RL_WIBU3" TO "GOD" ;
GRANT "RL_WIBU6" TO "GOD" ;
GRANT "RL_WIBU7" TO "GOD" ;
GRANT "CAPTURE_ADMIN" TO "GOD" ;
GRANT "OEM_ADVISOR" TO "GOD" ;
GRANT "RL_QUANLY" TO "GOD" ;
GRANT "RLLAB3_TRUONGPHONG" TO "GOD" ;
GRANT "DBA" TO "GOD" ;
GRANT "PPLB_ROLE" TO "GOD" ;
GRANT "CTXAPP" TO "GOD" ;
GRANT "DV_AUDIT_CLEANUP" TO "GOD" ;
GRANT "OLAP_XS_ADMIN" TO "GOD" ;
GRANT "WIBU" TO "GOD" ;
GRANT "XS_CACHE_ADMIN" TO "GOD" ;
GRANT "RLLAB3_SUPERVISOR" TO "GOD" ;
GRANT "RLLAB3_MANAGEMENT" TO "GOD" ;
GRANT "AUDIT_ADMIN" TO "GOD" ;
GRANT "RLLAB3_NHANVIEN" TO "GOD" ;
GRANT "XDB_WEBSERVICES_OVER_HTTP" TO "GOD" ;
GRANT "AQ_ADMINISTRATOR_ROLE" TO "GOD" ;
GRANT "SYSUMF_ROLE" TO "GOD" ;
GRANT "XDB_WEBSERVICES" TO "GOD" ;
GRANT "RL_TEST" TO "GOD" ;
GRANT "OPTIMIZER_PROCESSING_RATE" TO "GOD" ;
GRANT "QLTV_NVQLY" TO "GOD" ;
GRANT "RECOVERY_CATALOG_USER" TO "GOD" ;
GRANT "DV_ADMIN" TO "GOD" ;
GRANT "DV_POLICY_OWNER" TO "GOD" ;
GRANT "DV_GOLDENGATE_ADMIN" TO "GOD" ;
GRANT "IMP_FULL_DATABASE" TO "GOD" ;
GRANT "DV_XSTREAM_ADMIN" TO "GOD" ;
GRANT "DV_PATCH_ADMIN" TO "GOD" ;
GRANT "GGSYS_ROLE" TO "GOD" ;
GRANT "DATAPUMP_EXP_FULL_DATABASE" TO "GOD" ;
GRANT "EJBCLIENT" TO "GOD" ;
GRANT "RL_UPPERMOON" TO "GOD" ;
GRANT "HS_ADMIN_EXECUTE_ROLE" TO "GOD" ;
GRANT "JMXSERVER" TO "GOD" ;
GRANT "OLAP_DBA" TO "GOD" ;
GRANT "ADM_PARALLEL_EXECUTE_TASK" TO "GOD" ;
GRANT "JAVAIDPRIV" TO "GOD" ;
GRANT "RL_NHANVIEN" TO "GOD" ;
GRANT "SELECT_CATALOG_ROLE" TO "GOD" ;
GRANT "DATAPUMP_IMP_FULL_DATABASE" TO "GOD" ;
GRANT "OEM_MONITOR" TO "GOD" ;
GRANT "AQ_USER_ROLE" TO "GOD" ;
GRANT "RECOVERY_CATALOG_OWNER" TO "GOD" ;
GRANT "DV_GOLDENGATE_REDO_ACCESS" TO "GOD" ;
GRANT "XDB_WEBSERVICES_WITH_PUBLIC" TO "GOD" ;
GRANT "RL_LOWERMOON" TO "GOD" ;
GRANT "EXECUTE_CATALOG_ROLE" TO "GOD" ;
GRANT "DV_ACCTMGR" TO "GOD" ;
GRANT "DBMS_MDX_INTERNAL" TO "GOD" ;
GRANT "DV_STREAMS_ADMIN" TO "GOD" ;
GRANT "XS_NAMESPACE_ADMIN" TO "GOD" ;
GRANT "BDSQL_USER" TO "GOD" ;
GRANT "ORDADMIN" TO "GOD" ;
GRANT "AUTHENTICATEDUSER" TO "GOD" ;
GRANT "XS_CONNECT" TO "GOD" ;
GRANT "XDBADMIN" TO "GOD" ;
GRANT "EM_EXPRESS_BASIC" TO "GOD" ;

-- SYSTEM PRIVILEGES


-- QUOTAS

-- ROLES
-- SYSTEM PRIVILEGES
GRANT CREATE JOB TO "GOD" ;
GRANT DROP ANY CONTEXT TO "GOD" ;
GRANT UPDATE ANY CUBE TO "GOD" ;
GRANT ALTER ANY ANALYTIC VIEW TO "GOD" ;
GRANT DROP ANY TRIGGER TO "GOD" ;
GRANT DROP ANY SQL TRANSLATION PROFILE TO "GOD" ;
GRANT MANAGE ANY FILE GROUP TO "GOD" ;
GRANT ALTER PUBLIC DATABASE LINK TO "GOD" ;
GRANT MANAGE FILE GROUP TO "GOD" ;
GRANT ALTER ANY INDEX TO "GOD" ;
GRANT DROP ANY SEQUENCE TO "GOD" ;
GRANT ALTER PROFILE TO "GOD" ;
GRANT INHERIT ANY PRIVILEGES TO "GOD" ;
GRANT UNDER ANY TABLE TO "GOD" ;
GRANT CREATE ASSEMBLY TO "GOD" ;
GRANT DROP ANY LIBRARY TO "GOD" ;
GRANT ALTER ANY EDITION TO "GOD" ;
GRANT CREATE ROLE TO "GOD" ;
GRANT CREATE LIBRARY TO "GOD" ;
GRANT DROP ROLLBACK SEGMENT TO "GOD" ;
GRANT CREATE TRIGGER TO "GOD" ;
GRANT ALTER ANY PROCEDURE TO "GOD" ;
GRANT ADMINISTER DATABASE TRIGGER TO "GOD" ;
GRANT DROP ANY MEASURE FOLDER TO "GOD" ;
GRANT CREATE ANY PROCEDURE TO "GOD" ;
GRANT ALTER ANY OUTLINE TO "GOD" ;
GRANT CREATE ANY ANALYTIC VIEW TO "GOD" ;
GRANT EXECUTE ANY INDEXTYPE TO "GOD" ;
GRANT USE ANY JOB RESOURCE TO "GOD" ;
GRANT CREATE ANY DIRECTORY TO "GOD" ;
GRANT ALTER ANY RULE SET TO "GOD" ;
GRANT USE ANY SQL TRANSLATION PROFILE TO "GOD" ;
GRANT ALTER ANY MINING MODEL TO "GOD" ;
GRANT DEBUG CONNECT SESSION TO "GOD" ;
GRANT LOGMINING TO "GOD" ;
GRANT DROP ANY ATTRIBUTE DIMENSION TO "GOD" ;
GRANT CREATE ANY MINING MODEL TO "GOD" ;
GRANT CREATE LOCKDOWN PROFILE TO "GOD" ;
GRANT ALTER SESSION TO "GOD" ;
GRANT CREATE MATERIALIZED VIEW TO "GOD" ;
GRANT CREATE PLUGGABLE DATABASE TO "GOD" ;
GRANT DROP ANY ANALYTIC VIEW TO "GOD" ;
GRANT WRITE ANY ANALYTIC VIEW CACHE TO "GOD" ;
GRANT MERGE ANY VIEW TO "GOD" ;
GRANT CREATE ANY INDEX TO "GOD" ;
GRANT READ ANY ANALYTIC VIEW CACHE TO "GOD" ;
GRANT CREATE DIMENSION TO "GOD" ;
GRANT EXECUTE ANY RULE SET TO "GOD" ;
GRANT CREATE SQL TRANSLATION PROFILE TO "GOD" ;
GRANT ALTER ANY MATERIALIZED VIEW TO "GOD" ;
GRANT AUDIT SYSTEM TO "GOD" ;
GRANT CREATE OPERATOR TO "GOD" ;
GRANT MANAGE ANY QUEUE TO "GOD" ;
GRANT ALTER ANY SQL PROFILE TO "GOD" ;
GRANT GRANT ANY OBJECT PRIVILEGE TO "GOD" ;
GRANT CREATE INDEXTYPE TO "GOD" ;
GRANT AUDIT ANY TO "GOD" ;
GRANT INHERIT ANY REMOTE PRIVILEGES TO "GOD" ;
GRANT SYSKM TO "GOD" ;
GRANT DEBUG ANY PROCEDURE TO "GOD" ;
GRANT CREATE ANY MEASURE FOLDER TO "GOD" ;
GRANT CREATE ANY SEQUENCE TO "GOD" ;
GRANT CREATE MEASURE FOLDER TO "GOD" ;
GRANT UPDATE ANY CUBE BUILD PROCESS TO "GOD" ;
GRANT CREATE VIEW TO "GOD" ;
GRANT ALTER DATABASE LINK TO "GOD" ;
GRANT ALTER ANY ASSEMBLY TO "GOD" ;
GRANT ALTER ANY SQL TRANSLATION PROFILE TO "GOD" ;
GRANT CREATE ANY EVALUATION CONTEXT TO "GOD" ;
GRANT SELECT ANY MINING MODEL TO "GOD" ;
GRANT DELETE ANY CUBE DIMENSION TO "GOD" ;
GRANT ALTER ANY TABLE TO "GOD" ;
GRANT ALTER ANY ATTRIBUTE DIMENSION TO "GOD" ;
GRANT CREATE SESSION TO "GOD" ;
GRANT CREATE RULE TO "GOD" ;
GRANT BECOME USER TO "GOD" ;
GRANT SELECT ANY CUBE BUILD PROCESS TO "GOD" ;
GRANT SELECT ANY TABLE TO "GOD" ;
GRANT INSERT ANY MEASURE FOLDER TO "GOD" ;
GRANT CREATE ANY SQL PROFILE TO "GOD" ;
GRANT FORCE ANY TRANSACTION TO "GOD" ;
GRANT DELETE ANY TABLE TO "GOD" ;
GRANT ALTER ANY SEQUENCE TO "GOD" ;
GRANT SELECT ANY CUBE DIMENSION TO "GOD" ;
GRANT CREATE ANY EDITION TO "GOD" ;
GRANT CREATE EXTERNAL JOB TO "GOD" ;
GRANT EM EXPRESS CONNECT TO "GOD" ;
GRANT DROP ANY MATERIALIZED VIEW TO "GOD" ;
GRANT CREATE ANY CUBE BUILD PROCESS TO "GOD" ;
GRANT FLASHBACK ANY TABLE TO "GOD" ;
GRANT DROP ANY RULE SET TO "GOD" ;
GRANT BACKUP ANY TABLE TO "GOD" ;
GRANT ALTER ANY CUBE TO "GOD" ;
GRANT CREATE CREDENTIAL TO "GOD" ;
GRANT CREATE TABLE TO "GOD" ;
GRANT EXECUTE ANY LIBRARY TO "GOD" ;
GRANT DROP ANY OUTLINE TO "GOD" ;
GRANT EXECUTE ASSEMBLY TO "GOD" ;
GRANT CREATE ANY HIERARCHY TO "GOD" ;
GRANT CREATE ANALYTIC VIEW TO "GOD" ;
GRANT CREATE ANY DIMENSION TO "GOD" ;
GRANT DROP ANY TABLE TO "GOD" ;
GRANT ADMINISTER KEY MANAGEMENT TO "GOD" ;
GRANT ALTER ANY CLUSTER TO "GOD" ;
GRANT EXECUTE ANY CLASS TO "GOD" ;
GRANT ALTER ANY CUBE BUILD PROCESS TO "GOD" ;
GRANT CREATE ANY CREDENTIAL TO "GOD" ;
GRANT DROP ANY DIMENSION TO "GOD" ;
GRANT SYSBACKUP TO "GOD" ;
GRANT CREATE ANY RULE SET TO "GOD" ;
GRANT SELECT ANY SEQUENCE TO "GOD" ;
GRANT UNDER ANY TYPE TO "GOD" ;
GRANT MANAGE TABLESPACE TO "GOD" ;
GRANT DROP ANY OPERATOR TO "GOD" ;
GRANT CREATE ANY OPERATOR TO "GOD" ;
GRANT DROP ANY HIERARCHY TO "GOD" ;
GRANT EXEMPT IDENTITY POLICY TO "GOD" ;
GRANT CREATE TYPE TO "GOD" ;
GRANT CREATE TABLESPACE TO "GOD" ;
GRANT SELECT ANY TRANSACTION TO "GOD" ;
GRANT DELETE ANY MEASURE FOLDER TO "GOD" ;
GRANT CREATE ANY CUBE TO "GOD" ;
GRANT LOCK ANY TABLE TO "GOD" ;
GRANT CREATE EVALUATION CONTEXT TO "GOD" ;
GRANT DROP ANY TYPE TO "GOD" ;
GRANT ADVISOR TO "GOD" ;
GRANT CREATE PUBLIC DATABASE LINK TO "GOD" ;
GRANT ANALYZE ANY TO "GOD" ;
GRANT CREATE ATTRIBUTE DIMENSION TO "GOD" ;
GRANT DROP ANY RULE TO "GOD" ;
GRANT INSERT ANY CUBE DIMENSION TO "GOD" ;
GRANT CREATE ROLLBACK SEGMENT TO "GOD" ;
GRANT CREATE ANY JOB TO "GOD" ;
GRANT ALTER USER TO "GOD" ;
GRANT QUERY REWRITE TO "GOD" ;
GRANT SELECT ANY DICTIONARY TO "GOD" ;
GRANT CREATE PUBLIC SYNONYM TO "GOD" ;
GRANT DROP LOGICAL PARTITION TRACKING TO "GOD" ;
GRANT GLOBAL QUERY REWRITE TO "GOD" ;
GRANT ALTER ANY CUBE DIMENSION TO "GOD" ;
GRANT CREATE ANY CUBE DIMENSION TO "GOD" ;
GRANT DROP ANY CLUSTER TO "GOD" ;
GRANT CREATE ANY RULE TO "GOD" ;
GRANT UPDATE ANY CUBE DIMENSION TO "GOD" ;
GRANT CREATE LOGICAL PARTITION TRACKING TO "GOD" ;
GRANT ADMINISTER RESOURCE MANAGER TO "GOD" ;
GRANT CREATE ANY SYNONYM TO "GOD" ;
GRANT DROP ANY SYNONYM TO "GOD" ;
GRANT DROP ANY MINING MODEL TO "GOD" ;
GRANT EXECUTE ANY PROCEDURE TO "GOD" ;
GRANT CREATE SYNONYM TO "GOD" ;
GRANT SET CONTAINER TO "GOD" ;
GRANT EXECUTE ANY PROGRAM TO "GOD" ;
GRANT EXEMPT REDACTION POLICY TO "GOD" ;
GRANT EXECUTE ANY TYPE TO "GOD" ;
GRANT ON COMMIT REFRESH TO "GOD" ;
GRANT DEBUG CONNECT ANY TO "GOD" ;
GRANT CREATE SEQUENCE TO "GOD" ;
GRANT CREATE HIERARCHY TO "GOD" ;
GRANT SELECT ANY MEASURE FOLDER TO "GOD" ;
GRANT COMMENT ANY MINING MODEL TO "GOD" ;
GRANT ADMINISTER SQL TUNING SET TO "GOD" ;
GRANT SYSOPER TO "GOD" ;
GRANT CREATE ANY INDEXTYPE TO "GOD" ;
GRANT DROP ANY INDEX TO "GOD" ;
GRANT RESTRICTED SESSION TO "GOD" ;
GRANT SYSDG TO "GOD" ;
GRANT DEQUEUE ANY QUEUE TO "GOD" ;
GRANT ENABLE DIAGNOSTICS TO "GOD" ;
GRANT ANALYZE ANY DICTIONARY TO "GOD" ;
GRANT ALTER ANY INDEXTYPE TO "GOD" ;
GRANT TRANSLATE ANY SQL TO "GOD" ;
GRANT ADMINISTER ANY SQL TUNING SET TO "GOD" ;
GRANT CREATE USER TO "GOD" ;
GRANT EXECUTE ANY OPERATOR TO "GOD" ;
GRANT CREATE CUBE BUILD PROCESS TO "GOD" ;
GRANT CREATE PROFILE TO "GOD" ;
GRANT ALTER ANY ROLE TO "GOD" ;
GRANT UPDATE ANY TABLE TO "GOD" ;
GRANT ALTER ANY LIBRARY TO "GOD" ;
GRANT DROP ANY VIEW TO "GOD" ;
GRANT CREATE ANY CLUSTER TO "GOD" ;
GRANT EXECUTE ANY RULE TO "GOD" ;
GRANT ALTER TABLESPACE TO "GOD" ;
GRANT UNDER ANY VIEW TO "GOD" ;
GRANT EXECUTE ANY ASSEMBLY TO "GOD" ;
GRANT GRANT ANY PRIVILEGE TO "GOD" ;
GRANT ALTER ANY TRIGGER TO "GOD" ;
GRANT CREATE ANY VIEW TO "GOD" ;
GRANT ALTER LOCKDOWN PROFILE TO "GOD" ;
GRANT EXPORT FULL DATABASE TO "GOD" ;
GRANT ALTER ANY MEASURE FOLDER TO "GOD" ;
GRANT ALTER ANY EVALUATION CONTEXT TO "GOD" ;
GRANT TEXT DATASTORE ACCESS TO "GOD" ;
GRANT FLASHBACK ARCHIVE ADMINISTER TO "GOD" ;
GRANT IMPORT FULL DATABASE TO "GOD" ;
GRANT CREATE ANY OUTLINE TO "GOD" ;
GRANT COMMENT ANY TABLE TO "GOD" ;
GRANT READ ANY TABLE TO "GOD" ;
GRANT CREATE DATABASE LINK TO "GOD" ;
GRANT DROP PUBLIC SYNONYM TO "GOD" ;
GRANT DROP USER TO "GOD" ;
GRANT CHANGE NOTIFICATION TO "GOD" ;
GRANT CREATE MINING MODEL TO "GOD" ;
GRANT INSERT ANY TABLE TO "GOD" ;
GRANT DROP LOCKDOWN PROFILE TO "GOD" ;
GRANT DROP PROFILE TO "GOD" ;
GRANT CREATE ANY MATERIALIZED VIEW TO "GOD" ;
GRANT CREATE RULE SET TO "GOD" ;
GRANT EXEMPT ACCESS POLICY TO "GOD" ;
GRANT MANAGE SCHEDULER TO "GOD" ;
GRANT READ ANY FILE GROUP TO "GOD" ;
GRANT FORCE TRANSACTION TO "GOD" ;
GRANT DROP ANY CUBE BUILD PROCESS TO "GOD" ;
GRANT ALTER ANY TYPE TO "GOD" ;
GRANT DROP ANY PROCEDURE TO "GOD" ;
GRANT CREATE ANY SQL TRANSLATION PROFILE TO "GOD" ;
GRANT DROP PUBLIC DATABASE LINK TO "GOD" ;
GRANT DROP ANY INDEXTYPE TO "GOD" ;
GRANT DROP ANY SQL PROFILE TO "GOD" ;
GRANT EXECUTE DYNAMIC MLE TO "GOD" ;
GRANT ALTER SYSTEM TO "GOD" ;
GRANT DROP ANY ROLE TO "GOD" ;
GRANT ALTER ANY DIMENSION TO "GOD" ;
GRANT DROP ANY CUBE DIMENSION TO "GOD" ;
GRANT DROP ANY CUBE TO "GOD" ;
GRANT CREATE ANY TRIGGER TO "GOD" ;
GRANT DROP ANY ASSEMBLY TO "GOD" ;
GRANT CREATE ANY TABLE TO "GOD" ;
GRANT ADMINISTER SQL MANAGEMENT OBJECT TO "GOD" ;
GRANT DROP ANY DIRECTORY TO "GOD" ;
GRANT ENQUEUE ANY QUEUE TO "GOD" ;
GRANT DROP ANY EVALUATION CONTEXT TO "GOD" ;
GRANT CREATE ANY ASSEMBLY TO "GOD" ;
GRANT CREATE ANY TYPE TO "GOD" ;
GRANT REDEFINE ANY TABLE TO "GOD" ;
GRANT CREATE CLUSTER TO "GOD" ;
GRANT CREATE ANY CONTEXT TO "GOD" ;
GRANT EXECUTE ANY EVALUATION CONTEXT TO "GOD" ;
GRANT RESUMABLE TO "GOD" ;
GRANT CREATE ANY LIBRARY TO "GOD" ;
GRANT DROP ANY EDITION TO "GOD" ;
GRANT CREATE PROCEDURE TO "GOD" ;
GRANT ALTER DATABASE TO "GOD" ;
GRANT SELECT ANY CUBE TO "GOD" ;
GRANT GRANT ANY ROLE TO "GOD" ;
GRANT ALTER ANY RULE TO "GOD" ;
GRANT CREATE ANY ATTRIBUTE DIMENSION TO "GOD" ;
GRANT CREATE CUBE DIMENSION TO "GOD" ;
GRANT ALTER ANY OPERATOR TO "GOD" ;
GRANT CREATE CUBE TO "GOD" ;
GRANT ALTER RESOURCE COST TO "GOD" ;
GRANT ALTER ANY HIERARCHY TO "GOD" ;
GRANT DROP TABLESPACE TO "GOD" ;
GRANT ALTER ROLLBACK SEGMENT TO "GOD" ;
GRANT PURGE DBA_RECYCLEBIN TO "GOD" ;

