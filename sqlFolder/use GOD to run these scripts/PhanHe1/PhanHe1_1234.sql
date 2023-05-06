
GRANT EXECUTE ON sa_components TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON sa_user_admin TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON sa_label_admin TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON sa_policy_admin TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON sa_audit_admin TO OLS_ADMIN WITH GRANT OPTION; 
GRANT EXECUTE ON SA_SESSION TO OLS_ADMIN WITH GRANT OPTION; 
GRANT LBAC_DBA TO OLS_ADMIN; 
GRANT EXECUTE ON sa_sysdba TO OLS_ADMIN; 
GRANT EXECUTE ON to_lbac_data_label TO OLS_ADMIN; 
GRANT region_policy_DBA TO OLS_ADMIN



-- Tao nguoi quan tri du lieu
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
create user DB_manager identified by 123;
grant connect to DB_manager;

-- Xem danh sach user trong he thong
CREATE OR REPLACE VIEW USER_INFO
AS
    SELECT USER_ID, USERNAME, ACCOUNT_STATUS, EXPIRY_DATE FROM DBA_USERS
    --SELECT * FROM ALL_USERS
    WHERE USERNAME IN (
        SELECT MaNV
        FROM GOD.NHANVIEN
    );
/
--DROP VIEW USER_INFO 

-- view xem quyen c?a user va role trong he thong --
CREATE OR REPLACE VIEW USER_PRIVS
AS
    SELECT * FROM DBA_TAB_PRIVS
    WHERE GRANTEE IN (
        SELECT MaNV
        FROM GOD.NHANVIEN
    ) OR GRANTEE LIKE 'RL_%';
/


CREATE OR REPLACE VIEW ROLE_PRIVS
AS
    SELECT * FROM ROLE_TAB_PRIVS
    WHERE ROLE LIKE '%RL_%'
/


grant select on ROLE_PRIVS to DB_Manager;
grant select on USER_PRIVS to DB_Manager;
grant select on USER_INFO to DB_Manager;

/*
drop view USER_ROLE_PRIVs
-- GRANT VA TEST THU TREN USER ADMIN --
SELECT * FROM SYS.USER_INFO;
SELECT * FROM SYS.USER_ROLE_PRIVS;
*/

-- CAU LENH CHINH FORMAT LAI CHO DE NHIN --
SET sqlformat ansiconsole;
SET SQLFORMAT DEFAULT
-- Cho phep tao moi, xoa, sua user/ role
GRANT CREATE USER, ALTER USER, DROP USER TO DB_Manager;
GRANT CREATE ROLE TO DB_Manager;
GRANT ALTER ROLE TO DB_Manager;


-- Cho phep thuc hien cap quyen: cap quyen cho user/role/ cap role cho user

GRANT GRANT ANY object PRIVILEGE TO DB_MANAGER;
GRANT GRANT ANY ROLE TO DB_MANAGER ;
grant select any table to DB_Manager ;
grant insert any table to DB_Manager ;
grant delete any table to DB_Manager ;
grant update any table to DB_Manager ;
grant create view to DB_Manager;

/*
Qua trinh cap quyen co tuy chon la co cho phep nguoi duoc cap quyen co the cap 
quyen ?o cho user/ role khac hay khong (co chi dinh WITH GRANT OPTION hay khong).
-- Tra loi: Khong vi viec cap quyen la do Database manager quan li, viec cap quyen 
cho user khac duoc phep cap quyen se co nguy co gay ra lo hong bao mat, do nguoi 
nhan quyen co the truyen lai quyen cho nguoi khac


*/

/*
Quyen, select, update thi cho phep phan quyen tinh ?en muc cot; quyen insert, delete thi
khong
*/


-- to test
/*

ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
create user test_DBA_mgr1 identified by 123;
alter user test_DBA_mgr1 identified by 223;
--drop user test_DBA_mgr1;

create role RL_wibu1;
--drop role RL_wibu1;
select * from god.DeAn;
select * from god.PhongBan;
select * from god.NhanVien;
select * from god.PhanCong;

grant select on god.PhongBan to RL_wibu1;
revoke select on god.PhongBan from RL_wibu1;
grant select on god.PhongBan to test_DBA_mgr1;
revoke select on god.PhongBan from test_DBA_mgr1;

select * from god.USER_PRIVS;


*/