

-- Yeu cau tao create cho phep xao user
CREATE OR REPLACE PROCEDURE ph1_dropUserOrRole(p_username varchar2, p_mode varchar2)
AS
BEGIN
  EXECUTE IMMEDIATE 'DROP  ' || UPPER(p_mode) || ' ' || p_username;
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
CREATE OR REPLACE VIEW PH1_VIEW_USRES_PRIVS
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
    SELECT ROLE, AUTHENTICATION_TYPE FROM DBA_ROLES
    WHERE ROLE LIKE 'RL_%';
/

CREATE OR REPLACE VIEW PH1_VIEW_ALL_TABLES
AS
    SELECT * FROM DBA_TABLES
    WHERE OWNER = 'GOD';
    -- WHERE TABBLE_NAME LIKE ''
/    
CREATE OR REPLACE VIEW PH1_VIEW_ALL_VIEWS
AS
    SELECT * FROM DBA_VIEWS
    WHERE OWNER = 'GOD';
    --WHERE VIEW_NAME LIKE ''

/

grant select on PH1_VIEW_USRES_PRIVS to DB_Manager;
grant select on PH1_VIEW_ALL_TABLES to DB_Manager;
grant select on PH1_VIEW_ALL_VIEWS to DB_Manager;
grant select on PH1_VIEW_ALL_USRES to DB_Manager;