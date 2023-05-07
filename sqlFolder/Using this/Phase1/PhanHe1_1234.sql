alter session set container= qldtpdb; 

-- Tao nguoi quan tri du lieu
--drop user RL_DB_MANAGER
--create user RL_DB_MANAGER identified by 123;
--grant connect to RL_DB_MANAGER;



-- Xem danh sach user trong he thong
CREATE OR REPLACE VIEW USER_INFO
AS
    SELECT USER_ID, USERNAME, ACCOUNT_STATUS, EXPIRY_DATE FROM DBA_USERS
    --SELECT * FROM ALL_USERS
    WHERE USERNAME IN (
        SELECT MaNV
        FROM ATBM.NHANVIEN
    );
/
--DROP VIEW USER_INFO 

-- view xem quyen c?a user va role trong he thong --
CREATE OR REPLACE VIEW USER_PRIVS
AS
    SELECT * FROM DBA_TAB_PRIVS
    WHERE GRANTEE IN (
        SELECT MaNV
        FROM ATBM.NHANVIEN
    ) OR GRANTEE LIKE 'RL_%';
/


CREATE OR REPLACE VIEW ROLE_PRIVS
AS
    SELECT * FROM ROLE_TAB_PRIVS
    WHERE ROLE LIKE '%RL_%'
/


-- if get error at Grant row User SYS to run this - then run again
/*
grant select on ROLE_TAB_PRIVS TO ATBM WITH GRANT OPTION;
grant select on DBA_TAB_PRIVS TO ATBM WITH GRANT OPTION;
grant select on DBA_USERS TO ATBM WITH GRANT OPTION;
grant select on DBA_TABLES TO ATBM WITH GRANT OPTION;
grant select on DBA_VIEWS TO ATBM WITH GRANT OPTION;
*/
----------

grant select on ROLE_PRIVS to RL_DB_MANAGER;
grant select on USER_PRIVS to RL_DB_MANAGER;
grant select on USER_INFO to RL_DB_MANAGER;

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
GRANT CREATE USER, ALTER USER, DROP USER TO RL_DB_MANAGER;
GRANT CREATE ROLE TO RL_DB_MANAGER;


-- Cho phep thuc hien cap quyen: cap quyen cho user/role/ cap role cho user

GRANT GRANT ANY object PRIVILEGE TO RL_DB_MANAGER;
GRANT GRANT ANY ROLE TO RL_DB_MANAGER ;
grant select any table to RL_DB_MANAGER ;
grant insert any table to RL_DB_MANAGER ;
grant delete any table to RL_DB_MANAGER ;
grant update any table to RL_DB_MANAGER ;
grant create view to RL_DB_MANAGER;
grant create table to RL_DB_MANAGER;
grant create user to RL_DB_MANAGER;
grant create role to RL_DB_MANAGER;





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
select * from ATBM.DeAn;
select * from ATBM.PhongBan;
select * from ATBM.NhanVien;
select * from ATBM.PhanCong;

grant select on ATBM.PhongBan to RL_wibu1;
revoke select on ATBM.PhongBan from RL_wibu1;
grant select on ATBM.PhongBan to test_DBA_mgr1;
revoke select on ATBM.PhongBan from test_DBA_mgr1;

select * from ATBM.USER_PRIVS;


*/