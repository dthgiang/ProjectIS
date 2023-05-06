---------------------------------------------------------
---------------- Run Proc Area --------------------------
--- Please run create proc script below before run it ---
---------------------------------------------------------
/*
exec createUser;
-- exec dropUser;
exec grantEmpRole;
exec grantQuanLyRole;
exec grantTruongPhongRole;
exec usp_GrantUserTAICHINH;
exec usp_GrantUserNHANSU;
exec usp_GrantUserTRUONGDEAN;
exec USP_GRANTUSERGD;
exec usp_GrantUserAdmin
*/
------------ start from here ---
-- Run from this than run Proc Area ---
-------------
create role RL_NhanVien;
CREATE role RL_QUANLY;
create role RL_TruongPhong;
CREATE ROLE RL_TAICHINH;
CREATE ROLE RL_NHANSU;
CREATE ROLE RL_TRUONGDEAN;


----------------
-- this proc have permission to create user by username and pw in db
----------------
/
CREATE OR REPLACE PROCEDURE createUser
AS
    -- fetch username to cur
    CURSOR CUR IS (SELECT MANV, PASSWORD FROM ATBM.NHANVIEN
    WHERE MANV NOT IN (SELECT USERNAME FROM ALL_USERS));
    
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    PW VARCHAR2(200);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR, PW;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'CREATE USER '||USR||' IDENTIFIED BY ' || PW;
            EXECUTE IMMEDIATE (STR);
            STR := 'GRANT CONNECT TO '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All user are created' );
    END;
/
----------------
-- this proc have permission to delete user by username and pw in db
----------------

CREATE OR REPLACE PROCEDURE dropUser
AS
    CURSOR CUR IS (SELECT MANV FROM ATBM.NHANVIEN
    WHERE MANV IN (SELECT USERNAME FROM ALL_USERS));
    
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'drop USER '||USR || ' CASCADE';
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All user are droped' );
    END;
/

----------------------------
---- Grant role Area -------
----------------------------

-------------------------
-- this proc have responsibility to grant Role NhanVien  to all user have vai tro = nhan vien
-------------------------
CREATE OR REPLACE PROCEDURE grantEmpRole
AS
    CURSOR CUR IS (SELECT MANV FROM ATBM.NHANVIEN WHERE MANV NOT IN 
        (SELECT grantee FROM DBA_ROLE_PRIVS
            where granted_role = 'RL_NHANVIEN'));
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'grant RL_NhanVien to '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All user are granted' );
    END;
/

-------------------------
-- this proc have responsibility to grant Role Quan li  to all user have vai tro = Quan li
-------------------------
CREATE OR REPLACE PROCEDURE grantQuanLyRole
AS
    CURSOR CUR IS (SELECT MANV FROM ATBM.NHANVIEN WHERE VaiTro = 'Quan li' AND
        MANV NOT IN (SELECT grantee FROM DBA_ROLE_PRIVS 
                 where granted_role = 'RL_QUANLY'));
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'grant RL_QuanLy to '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All user are granted' );
    END;
/

-------------------------
-- this proc have responsibility to grant Role Truong phong  to all user have vai tro = Truong phong
-------------------------
CREATE OR REPLACE PROCEDURE grantTruongPhongRole
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE VaiTro = 'Truong phong' AND
        MANV NOT IN (SELECT grantee FROM DBA_ROLE_PRIVS
                 where granted_role = 'RL_TRUONGPHONG'));
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'grant RL_TruongPhong to '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All truong phong are granted' );
    END;
/


-------------------------
-- this proc have responsibility to grant Role Tai chinh  to all user have vai tro = Tai chinh
-------------------------
CREATE OR REPLACE PROCEDURE usp_GrantUserTAICHINH
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE VaiTro = 'Tai chinh');
    strSQL VARCHAR(2000);
    Usr varchar2(100);
BEGIN
    OPEN CUR;
    LOOP
        FETCH CUR INTO Usr;
        EXIT WHEN CUR%NOTFOUND;


        strSQL:= 'GRANT RL_TAICHINH TO '||Usr;
        EXECUTE IMMEDIATE (strSQL);
    END LOOP;
END;
/

-------------------------
-- this proc have responsibility to grant Role Nhan su  to all user have vai tro = Nhan su
-------------------------
CREATE OR REPLACE PROCEDURE usp_GrantUserNHANSU
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE VaiTro = 'Nhan su' AND
        MANV NOT IN (SELECT grantee FROM DBA_ROLE_PRIVS
                 where granted_role = 'RL_NHANSU'));
    strSQL VARCHAR(2000);
    Usr varchar2(100);
BEGIN
    OPEN CUR;
    LOOP
        FETCH CUR INTO Usr;
        EXIT WHEN CUR%NOTFOUND;


        strSQL:= 'GRANT RL_NHANSU TO '||Usr;
        EXECUTE IMMEDIATE (strSQL);
    END LOOP;
END;
/

-------------------------
-- this proc have responsibility to grant Role Truong de an  to all user have vai tro = Truong De An
-------------------------
CREATE OR REPLACE PROCEDURE usp_GrantUserTRUONGDEAN
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE VaiTro = 'Truong de an' AND
        MANV  NOT IN (SELECT grantee FROM DBA_ROLE_PRIVS
                 where granted_role = 'RL_TRUONGDEAN'));
    strSQL VARCHAR(2000);
    Usr varchar2(100);
BEGIN
    OPEN CUR;
    LOOP
        FETCH CUR INTO Usr;
        EXIT WHEN CUR%NOTFOUND;
 
        strSQL:= 'GRANT RL_TRUONGDEAN TO '||Usr;
        EXECUTE IMMEDIATE (strSQL);
    END LOOP;
END;
/
CREATE OR REPLACE PROCEDURE usp_GrantUserGD
AS
    CURSOR CUR IS (SELECT MANV FROM ATBM.NHANVIEN WHERE VaiTro = 'Ban giam doc');
    strSQL VARCHAR(2000);
    Usr varchar2(100);
BEGIN
    OPEN CUR;
    LOOP
        FETCH CUR INTO Usr;
        EXIT WHEN CUR%NOTFOUND;
 
        strSQL:= 'GRANT SELECT ON sys.fga_log$ TO '||Usr;
        EXECUTE IMMEDIATE (strSQL);
    END LOOP;
END;
/
CREATE OR REPLACE PROCEDURE usp_GrantUserAdmin
AS
    CURSOR CUR IS (SELECT MANV FROM ATBM.NHANVIEN WHERE VaiTro = 'Admin');
    strSQL VARCHAR(2000);
    Usr varchar2(100);
BEGIN
    OPEN CUR;
    LOOP
        FETCH CUR INTO Usr;
        EXIT WHEN CUR%NOTFOUND;
 
        strSQL:= 'GRANT SELECT,update ON atbm.save_key to '||Usr;
        EXECUTE IMMEDIATE (strSQL);
        strSQL:= 'grant execute on ATBM.new_key to '||Usr;
        EXECUTE IMMEDIATE (strSQL);
        strSQL:= 'grant execute on ATBM.update_key_admin to '||Usr;
        EXECUTE IMMEDIATE (strSQL);
        strSQL:= 'grant select on atbm.view_getkey to '||Usr;
        EXECUTE IMMEDIATE (strSQL);
        strSQL:= 'grant select on atbm.view_getpw to '||Usr;
        EXECUTE IMMEDIATE (strSQL);
    END LOOP;
END;
/