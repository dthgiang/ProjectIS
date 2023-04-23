-- Thuc Hien boi DB_Manager -- 
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE role RL_QUANLY;
/

-- 
--grant select on GOD.PhongBan to RL_QUANLY;
grant RL_NhanVien to RL_QuanLy;
/

-- SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'RL_QUANLY'; -- XEM QUYEN TREN BANG CUA ROLE QUAN LY
-- SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE = 'RL_QUANLY'; -- xem all user cua 1 role
-- PROC THUC HIEN BOI GOD
CREATE OR REPLACE PROCEDURE grantQuanLyRole
AS
    CURSOR CUR IS (SELECT MANV FROM GOD.NHANVIEN WHERE VaiTro = 'Quan li' AND
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
/


-- Xem cac thong tin nhan vien do nguoi quan ly nay phu trach tru LUONG va PHUCAP.
create or replace view PH2_View_QLy_XemNhanvien
as
    select MANV, TENNV, PHAI, NGAYSINH, DIACHI, SODT, VAITRO, MANQL, PHG from GOD.NhanVien 
    where MaNQL = SYS_CONTEXT('USERENV', 'SESSION_USER');

-- Xem cac phan cong lien quan toi nguoi quan ly va nhan vien cua minh phu trach --
create or replace view PH2_View_Qly_XemPhanCong
as
    select * from GOD.phancong
    where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER') OR MANV IN (
        SELECT MANV 
        FROM GOD.NHANVIEN 
        WHERE MaNQL = SYS_CONTEXT('USERENV', 'SESSION_USER')
    );
/ 

exec grantQuanLyRole;
/

-- DB_MANAGER --
GRANT SELECT ON GOD.PH2_View_QLy_XemNhanvien TO RL_QUANLY;
GRANT SELECT ON GOD.PH2_View_Qly_XemPhanCong TO RL_QUANLY;
/

-- Test -- 
select * from GOD.PH2_View_QLy_XemNhanvien;
select * from GOD.PH2_View_Qly_Xemphancong;


