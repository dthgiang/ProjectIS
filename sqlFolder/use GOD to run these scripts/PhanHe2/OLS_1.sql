--OLS
select * from V$PDBS; 
EXEC LBACSYS.CONFIGURE_OLS;
EXEC LBACSYS.OLS_ENFORCEMENT.ENABLE_OLS;
GRANT INHERIT PRIVILEGES ON USER SYS TO LBACSYS;

ALTER PLUGGABLE DATABASE PDB1 OPEN READ WRITE; 
ALTER USER lbacsys IDENTIFIED BY lbacsys ACCOUNT UNLOCK 
---
ALTER SESSION SET container = CDB$ROOT;

CREATE USER adols identified by 123;
GRANT CREATE SESSION TO adols;
GRANT CREATE SESSION TO adols;
GRANT CONNECT,RESOURCE TO adols; 
GRANT UNLIMITED TABLESPACE TO adols; 
GRANT SELECT ANY DICTIONARY TO adols; 
--C?P QUY?N CHO ADMIN OLS 
GRANT EXECUTE ON sa_components TO adols WITH GRANT OPTION; 
GRANT EXECUTE ON sa_user_admin TO adols WITH GRANT OPTION; 
GRANT EXECUTE ON sa_label_admin TO adols WITH GRANT OPTION; 
GRANT EXECUTE ON sa_policy_admin TO adols WITH GRANT OPTION; 
GRANT EXECUTE ON sa_audit_admin TO adols WITH GRANT OPTION; 
GRANT EXECUTE ON SA_SESSION TO adols WITH GRANT OPTION; 
GRANT LBAC_DBA TO adols; 
GRANT EXECUTE ON sa_sysdba TO adols; 
GRANT EXECUTE ON to_lbac_data_label TO adols; 
GRANT region_policy_DBA TO adols; 
--

ALTER SESSION SET container = PDB1;
CREATE TABLE adols.THONGBAO (NOIDUNG NVARCHAR2(500) NOT NULL, NGAYGIO TIMESTAMP DEFAULT SYSDATE);
--ALTER SESSION SET container = CDB$ROOT;
SELECT * FROM adols.THONGBAO;

BEGIN
	--T?o chính sách
	SA_SYSDBA.CREATE_POLICY (
	policy_name      => 'ols_policy',
	column_name      => 'ols_col');
	--T?o level

	sa_components.create_level
		(policy_name    => 'ols_policy',
		long_name      => 'Giam doc',
		short_name     => 'GD',
		level_num      => 9000);

	sa_components.create_level
		(policy_name    => 'ols_policy',
		long_name      => 'Truong phong',
		short_name     => 'TP',
		level_num      => 8000);

	sa_components.create_level
		(policy_name    => 'ols_policy',
		long_name      => 'Nhan vien',
		short_name     => 'NV',
		level_num      => 7000);
		
	--Tao compartments
	sa_components.create_compartment
		(policy_name    => 'ols_policy',
		long_name      => 'Mua ban',
		short_name     => 'MB',
		comp_num       => 1000);
	sa_components.create_compartment
		(policy_name    => 'ols_policy',
		 long_name      => 'San xuat',
		short_name     => 'SX',
		comp_num       => 100);
	sa_components.create_compartment
		(policy_name    => 'ols_policy',
		long_name      => 'Gia cong',
		short_name     => 'GC',
		comp_num       => 10);  
	
	--T?o groups
	sa_components.CREATE_GROUP   
		(policy_name    => 'ols_policy',
		long_name      => 'Mien Bac',
		short_name     => 'MB',
		group_num      => 100);
	sa_components.CREATE_GROUP  
		(policy_name    => 'ols_policy',
		long_name      => 'Mien Trung',
		short_name     => 'MT',
		group_num      => 110);
	sa_components.CREATE_GROUP 
		(policy_name    => 'ols_policy',
		long_name      => 'Mien Nam',
		short_name     => 'MN',
		group_num      => 120);
     --label giam doc 
	sa_label_admin.create_label
		(policy_name    => 'ols_policy',
		label_tag      => 300,
		label_value    => 'GD');
      -- trý?ng ph?ng ph? trách l?nh v?c s?n xu?t mi?n Nam
	sa_label_admin.create_label
		(policy_name    => 'ols_policy',
		label_tag      => 310,
		label_value    => 'TP:SX:MN');
     -- giám ð?c ph? trách b?t k? l?nh v?c nào ? chi nhánh mi?n B?c
	sa_label_admin.create_label
		(policy_name    => 'ols_policy',
		label_tag      => 320,
		label_value    => 'GD:MB,SX,GC:MB');
    sa_label_admin.create_label
		(policy_name    => 'ols_policy',
		label_tag      => 330,
		label_value    => 'TP');
    sa_label_admin.create_label
		(policy_name    => 'ols_policy',
		label_tag      => 340,
		label_value    => 'TP:SX:MT');
    --?ng d?ng policy lên bang THONGBAO
	sa_policy_admin.apply_table_policy
		(policy_name    => 'ols_policy',
		schema_name    => 'adols',
		table_name     => 'THONGBAO',
		table_options  => 'WRITE_CONTROL,READ_CONTROL,CHECK_CONTROL'); 
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
end;

--kich hoat chinh sach
EXEC SA_SYSDBA.ENABLE_POLICY ('ols_policy'); 
--xoa chinh sach
EXEC SA_SYSDBA.drop_POLICY ('ols_policy'); 
-- kiem tra label
SELECT * FROM dba_sa_levels; 
SELECT * FROM DBA_SA_COMPARTMENTS; 
SELECT * FROM DBA_SA_GROUPS; 
SELECT * FROM DBA_SA_GROUP_HIERARCHY;
--:C?P QUY?N CHO ADMIN TRÊN OLS POLICY
EXECUTE SA_USER_ADMIN.SET_USER_PRIVS('ols_policy','adols','FULL,PROFILE_ACCESS'); 

INSERT INTO adols.THONGBAO VALUES ('A notification ', SYSTIMESTAMP, CHAR_TO_LABEL('ols_policy', 'GD'));
INSERT INTO adols.THONGBAO VALUES ('T1', SYSTIMESTAMP, CHAR_TO_LABEL('ols_policy', 'TP'));
INSERT INTO adols.THONGBAO VALUES ('T1', SYSTIMESTAMP, CHAR_TO_LABEL('ols_policy', 'TP:SX:MT'));

--HAM TAO LABEL
/
CREATE OR REPLACE PROCEDURE SYS.get_customer_label (
	username	VARCHAR2,
	level		VARCHAR2,
    compartment  VARCHAR2 DEFAULT NULL,
    groups        VARCHAR2 DEFAULT NULL)
AS
BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name     => 'ols_policy',
        user_name       => username,
        max_level       => level);
        
    IF compartment IS NOT NULL
    THEN
        SA_USER_ADMIN.SET_COMPARTMENTS (
            policy_name     => 'ols_policy',
            user_name       => username,
            read_comps      => compartment);
    END IF;
    
    IF groups IS NOT NULL
    THEN
        SA_USER_ADMIN.SET_GROUPS (
            policy_name     => 'ols_policy',
            user_name       => username,
            read_groups     => groups);
    END IF;
END;
/
BEGIN
    sys.get_customer_label('adols','GD');
    sys.get_customer_label('GD1','GD');
    sys.get_customer_label('TP1','TP');
END;
CREATE USER GD1 IDENTIFIED BY 123; 
grant create session to gd1;
CREATE USER TP1 IDENTIFIED BY 123; 
grant create session to TP1;

GRANT SELECT ON adols.THONGBAO TO TP1;
SELECT * FROM adols.THONGBAO;