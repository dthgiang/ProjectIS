SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE createUser
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE MANV NOT IN (SELECT USERNAME FROM ALL_USERS));
    STR VARCHAR(1000);
    USR VARCHAR2(10);
    BEGIN
        OPEN CUR;
        STR := 'ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE';
        EXECUTE IMMEDIATE (STR);
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'CREATE USER '||USR||' IDENTIFIED BY 123';
            EXECUTE IMMEDIATE (STR);
            STR := 'GRANT CONNECT TO '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        STR := 'ALTER SESSION SET "_ORACLE_SCRIPT"=FALSE';
        EXECUTE IMMEDIATE (STR);
        dbms_output.put_line( 'All user are created' );
    END;
    
exec createUser;

CREATE OR REPLACE PROCEDURE dropUser
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE MANV IN (SELECT USERNAME FROM ALL_USERS));
    STR VARCHAR(1000);
    USR VARCHAR2(10);
    BEGIN
        OPEN CUR;
        STR := 'ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE';
        EXECUTE IMMEDIATE (STR);
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'drop USER '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        STR := 'ALTER SESSION SET "_ORACLE_SCRIPT"=FALSE';
        EXECUTE IMMEDIATE (STR);
        dbms_output.put_line( 'All user are droped' );
    END;
    -- exec dropUser;
/
-- cs1
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
create role RL_NhanVien;


grant select on god.PhongBan to RL_NhanVien;
grant select on god.DeAn to RL_NhanVien;

grant update(NGAYSINH) on god.Vw_NhanVienToNhanVien to RL_NhanVien;
grant update(SODT) on god.Vw_NhanVienToNhanVien to RL_NhanVien;
grant update(DIACHI) on god.Vw_NhanVienToNhanVien to RL_NhanVien;


--grant RL_NhanVien to NV200;


CREATE OR REPLACE PROCEDURE grantEmpRole
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE MANV NOT IN 
        (SELECT grantee FROM DBA_ROLE_PRIVS
            where granted_role = 'RL_NHANVIEN') AND VaiTro = 'Nhân viên');
    STR VARCHAR(1000);
    USR VARCHAR2(10);
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
exec grantEmpRole;
/

create view Vw_NhanVienToNhanVien as
    select * from NhanVien  where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER');
    

create view Vw_PhanCongToNhanVien as
    select * from PhanCong  where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER');
    

grant select on Vw_NhanVienToNhanVien to RL_NhanVien;
grant select on Vw_PhanCongToNhanVien to RL_NhanVien;

--select * from god.Vw_NhanVienToNhanVien;
--update god.Vw_NhanVienToNhanVien set DiaChi = 'Th? S?n, Anh S?n, Ngh? An' where MANV = 'NV200';




-- to test policy function
/*
SET SERVEROUTPUT ON;
DECLARE
  l_output varchar2(1000);
BEGIN
  l_output := F_NhanVienCS1('god', 'NhanVien');
  DBMS_OUTPUT.PUT_LINE('Result: ' || l_output);
END;
*/
-- to delete a policy
/*
begin
DBMS_RLS.DROP_POLICY(
    object_schema => 'god',
    object_name => 'NHANVIEN',
    policy_name => 'PC1_NhanVien'
);
end;

*/

/*
CREATE OR REPLACE PROCEDURE revokeEmpRole
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE MANV IN 
        (SELECT grantee FROM DBA_ROLE_PRIVS
            where granted_role = 'RL_NHANVIEN'));
    STR VARCHAR(1000);
    USR VARCHAR2(10);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'revoke RL_NhanVien from '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All user are revoked' );
    END;

exec revokeEmpRole

*/