

-- Yeu cau tao create cho phep xao user
CREATE OR REPLACE PROCEDURE ph1_dropUserOrRole(p_username varchar2, p_mode varchar2)
AS
    STR varchar2(300);
BEGIN
    STR := 'ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE';
     EXECUTE IMMEDIATE (STR);
  EXECUTE IMMEDIATE 'DROP  ' || UPPER(p_mode) || ' ' || p_username;
  STR := 'ALTER SESSION SET "_ORACLE_SCRIPT"=FALSE';
     EXECUTE IMMEDIATE (STR);
  EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

-- Yeu cau tao create cho phep xao user
CREATE OR REPLACE PROCEDURE ph1_createUserOrRole(p_username varchar2, p_password varchar2, p_mode varchar2)
AS
STR VARCHAR(1000);
    BEGIN
        STR := 'ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE';
        EXECUTE IMMEDIATE (STR);
        if (UPPER(p_mode) = 'USER') Then
            STR := 'CREATE USER '||p_username||' IDENTIFIED BY ' || p_password;
        else
            STR := 'CREATE ROLE RL_'||p_username;
        end if;
            
        EXECUTE IMMEDIATE (STR);
        STR := 'grant connect to ' || UPPER(p_username);
        EXECUTE IMMEDIATE (STR);
        Exception
       WHEN OTHERS THEN
          IF SQLCODE != -942 THEN
             RAISE;
          END IF;
END;
/

CREATE OR REPLACE PROCEDURE ph1_changePasswordUserOrRole(p_name varchar2, p_newPassword varchar2, p_mode varchar2, p_isPassword varchar2)
AS
STR VARCHAR(1000);
    BEGIN
    if (UPPER(p_isPassword) = 'NO' and UPPER(p_mode) = 'ROLE') then
        STR := 'ALTER ' || UPPER(p_mode) || ' ' || UPPER(p_name) || ' NOT IDENTIFIED';
    else 
        STR := 'ALTER ' || UPPER(p_mode) || ' ' || UPPER(p_name) || ' IDENTIFIED BY ' || p_newPassword;
    end if;
   
   EXECUTE IMMEDIATE (STR);
    EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

-- proc cap quyen cho user & role
CREATE OR REPLACE PROCEDURE ph1_grantPriv(p_userOrRole varchar2, p_privilege varchar2, p_option varchar2)
AS
STR VARCHAR(1000);
opt varchar(30);
    BEGIN
        opt := '';
        if (UPPER(p_option) = 'YES') Then
            opt := ' WITH GRANT OPTION';
        end if;
        
        STR := 'GRANT ' || P_privilege || ' to ' || p_userOrRole || ' ' || opt;  
        EXECUTE IMMEDIATE (STR);
        Exception
       WHEN OTHERS THEN
          IF SQLCODE != -942 THEN
             RAISE;
          END IF;
END;
/

-- lay lai quyen cua user
CREATE OR REPLACE PROCEDURE ph1_revokePriv(p_userOrRole varchar2, p_privilege varchar2)
AS
STR VARCHAR(1000);
    BEGIN
        STR := 'REVOKE ' || P_privilege || ' FROM ' || UPPER(p_userOrRole);  
        EXECUTE IMMEDIATE (STR);
        Exception
       WHEN OTHERS THEN
          IF SQLCODE != -942 THEN
             RAISE;
          END IF;
END;
/
/*
exec ph1_createUserOrRole('wibu1','123', 'user');
exec ph1_dropUserOrRole('wibu', 'user');
exec ph1_changePasswordUserOrRole('wibu', 'haha', 'role', 'yes');
exec ph1_grantPriv('wibu1', 'select on god.USER_PRIVS', 'NO');
exec ph1_revokePriv('wibu1', 'select on god.USER_PRIVS');

REVOKE select on god.USER_PRIVS FROM wibu1;

SELECT role FROM dba_roles;
SELECT username FROM dba_users
where username = 'WIBU1';

alter role wibu not identified;
*/

--- Khang
-- proc xem tat ca user va role trong he thong --

-- proc xem tat ca user va role trong he thong --
CREATE OR REPLACE VIEW PH1_VIEW_USERS_PRIVS
AS
    SELECT grantee, owner, table_name, grantor, privilege, grantable, type FROM DBA_TAB_PRIVS
        WHERE GRANTEE IN (
        SELECT MaNV
        FROM GOD.NHANVIEN
    ) or grantee LIKE 'RL_%';
/

CREATE OR REPLACE VIEW PH1_VIEW_ALL_USERS
AS
    SELECT USERNAME, EXPIRY_DATE, ACCOUNT_STATUS FROM DBA_USERS
    WHERE USERNAME IN (
        SELECT MaNV
        FROM GOD.NHANVIEN
    ); 
/

CREATE OR REPLACE VIEW PH1_VIEW_ALL_ROLES
AS
    SELECT ROLE as RoleName, AUTHENTICATION_TYPE FROM DBA_ROLES
    WHERE ROLE LIKE 'RL_%';
/

CREATE OR REPLACE VIEW PH1_VIEW_ALL_TABLES
AS
    SELECT owner, TABLE_NAME AS TableName, TABLESPACE_NAME, STATUS FROM DBA_TABLES
    WHERE OWNER = 'GOD' OR OWNER = 'DB_MANAGER';
    -- WHERE TABBLE_NAME LIKE ''
/    
CREATE OR REPLACE VIEW PH1_VIEW_ALL_VIEWS
AS
    SELECT  owner, VIEW_NAME AS ViewName, TEXT_LENGTH FROM DBA_VIEWS
    WHERE OWNER = 'GOD' OR OWNER = 'DB_MANAGER';
    --WHERE VIEW_NAME LIKE ''

/
CREATE OR REPLACE VIEW PH1_TEST_VIEW_ALL_VIEWS
AS select * from god.PH1_VIEW_ALL_VIEWS;
/
grant select on PH1_VIEW_USERS_PRIVS to DB_Manager;
grant select on PH1_VIEW_ALL_TABLES to DB_Manager;
grant select on PH1_VIEW_ALL_VIEWS to DB_Manager;
grant select on PH1_VIEW_ALL_USRES to DB_Manager;
grant select on ROLE_PRIVS to DB_Manager;
grant select on USER_PRIVS to DB_Manager;
grant select on USER_INFO to DB_Manager;

/*
drop view USER_ROLE_PRIVs
-- GRANT VA TEST THU TREN USER ADMIN --
SELECT * FROM SYS.USER_INFO;
SELECT * FROM SYS.USER_ROLE_PRIVS;
*/


-- Cho phep tao moi, xoa, sua user/ role
GRANT CREATE USER, ALTER USER, DROP USER TO DB_Manager;
GRANT CREATE ROLE TO DB_Manager;

-- Cho phep thuc hien cap quyen: cap quyen cho user/role/ cap role cho user

GRANT GRANT ANY object PRIVILEGE TO DB_MANAGER;
grant create table to DB_MANAGER ;
GRANT GRANT ANY ROLE TO DB_MANAGER ;
grant select any table to DB_Manager ;
grant insert any table to DB_Manager ;
grant delete any table to DB_Manager ;
grant update any table to DB_Manager ;  
grant create view to DB_Manager;
grant create procedure to DB_Manager;