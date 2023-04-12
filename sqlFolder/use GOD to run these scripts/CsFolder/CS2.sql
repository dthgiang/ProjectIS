ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
create role RL_QUANLY;

grant select on PhongBan to RL_QUANLY;

grant RL_NhanVien to RL_QuanLy;

select * from god.NhanVien;

SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'RL_QUANLY';

--SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE = 'RL_QUANLY'; -- xem all user cua 1 role


CREATE OR REPLACE PROCEDURE grantQuanLyRole
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE VaiTro = 'Qu?n lí' AND
        MANV NOT IN (SELECT grantee FROM DBA_ROLE_PRIVS
                 where granted_role = 'RL_QUANLY'));
    STR VARCHAR(1000);
    USR VARCHAR2(10);
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
    
exec grantQuanLyRole;

create or replace function F_NhanVienCS1(P_Schema varchar2, P_Object varchar2)
return varchar2
as
    userAcc varchar(20);
begin
    userAcc := SYS_CONTEXT('USERENV', 'SESSION_USER');
    return 'MANV = '||''''||userAcc||'''';
end;

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
/*
BEGIN
    DBMS_RLS.add_policy(
    object_schema => 'god',
    object_name => 'NHANVIEN',
    policy_name => 'PC1_NhanVien',
    function_schema => 'god',
    policy_function => 'F_NhanVienCS1'
    );
END;

BEGIN
    DBMS_RLS.add_policy(
    object_schema => 'god',
    object_name => 'PHANCONG',
    policy_name => 'PC1_PhanCong',
    policy_function => 'F_NhanVienCS1'
    );
END;
*/