ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
create role RL_TruongPhong;

--SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'RL_QUANLY';

/

CREATE OR REPLACE PROCEDURE grantTruongPhongRole
AS
    CURSOR CUR IS (SELECT MANV FROM NHANVIEN WHERE VaiTro = 'Tr??ng phòng' AND
        MANV NOT IN (SELECT grantee FROM DBA_ROLE_PRIVS
                 where granted_role = 'RL_TRUONGPHONG'));
    STR VARCHAR(1000);
    USR VARCHAR2(10);
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
exec grantTruongPhongRole;
--SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE = 'RL_TRUONGPHONG'; -- xem all user cua 1 role

-- Gan user roi moi cap quyen
grant RL_NhanVien to RL_TruongPhong;
--select * from god.NhanVien;



-- to test policy function
/*
SET SERVEROUTPUT ON;
DECLARE
  l_output varchar2(1000);
BEGIN
  l_output := F_TruongPhongCS3('god', 'NhanVien');
  DBMS_OUTPUT.PUT_LINE('Result: ' || l_output);
END;
*/

create or replace function F_NhanVienCS1(P_Schema varchar2, P_Object varchar2)
return varchar2
as
    userAcc varchar(20);
begin
    userAcc := SYS_CONTEXT('USERENV', 'SESSION_USER');
    return 'MANV = '||''''||userAcc||'''';
end;


BEGIN
    DBMS_RLS.add_policy(
    object_schema => 'god',
    object_name => 'NHANVIEN',
    policy_name => 'PC1_TruongPhongCS3',
    function_schema => 'god',
    policy_function => 'F_NhanVienCS1',
    sec_relevant_cols => 'Luong, PhuCap',
    sec_relevant_cols_opt => dbms_rls.ALL_ROWS
    );
END;
--XOA POLICY
begin
  DBMS_RLS.DROP_POLICY(
  object_schema => 'GOD',
  object_name => 'NHANVIEN',
  policy_name => 'PC1_TruongPhongCS3');
end;
/

create OR REPLACE view Vw_TruongPhongToNhanVien as
    select NV.MANV, TENNV, PHAI, DIACHI, SODT, VAITRO, MANQL, PHG, USERNAME from NhanVien NV join PhongBan on NV.PHG = MaPB where TrPHG = SYS_CONTEXT('USERENV', 'SESSION_USER');
    
/

create OR REPLACE view Vw_TruongPhongToPhanCong as
    select PC.* from Vw_TruongPhongToNhanVien NV join PhanCong PC on NV.MaNV = PC.MANV;
/
grant select on Vw_TruongPhongToPhanCong to RL_TruongPhong;
grant select on Vw_TruongPhongToNhanVien to RL_TruongPhong;
select * from god.NHANVIEN
/
CREATE OR REPLACE TRIGGER Insert_PhongBanTruongPhong
INSTEAD OF INSERT
ON Vw_TruongPhongToPhanCong
FOR EACH ROW
DECLARE ckt int;
BEGIN
    select count(*) into ckt from god.Vw_TruongPhongToNhanVien where MaNV = :NEW.MaNV;
        
    if ckt > 0 then
        insert into god.PhanCong values(:NEW.MANV, :NEW.MADA, :NEW.THOIGIAN);
    else
        RAISE_APPLICATION_ERROR(-20001, 'You do not have permission to insert this employee');
    end if;
        
END;
/
CREATE OR REPLACE TRIGGER Delete_PhongBanTruongPhong
INSTEAD OF DELETE
ON Vw_TruongPhongToPhanCong
FOR EACH ROW
DECLARE ckt int;
BEGIN
    select count(*) into ckt from god.Vw_TruongPhongToNhanVien where MaNV = :OLD.MaNV;
        
    if ckt > 0 then
        delete from god.PhanCong where MaNV = :OLD.MaNV and MaDA = :Old.MaDA;
    else
        RAISE_APPLICATION_ERROR(-20001, 'You do not have permission to delete this employee');
    end if;
        
END;
/
CREATE OR REPLACE TRIGGER Update_PhongBanTruongPhong
INSTEAD OF INSERT
ON Vw_TruongPhongToPhanCong
FOR EACH ROW
DECLARE ckt int;
BEGIN
    select count(*) into ckt from god.Vw_TruongPhongToNhanVien where MaNV = :NEW.MaNV;
        
    if ckt > 0 then
        update god.PhanCong set MaNV = :NEW.MANV, MaDA = :NEW.MADA, ThoiGian = :NEW.THOIGIAN
        where MaNV = :OLD.MANV and MaDA = :OLD.MADA;
    else
        RAISE_APPLICATION_ERROR(-20001, 'You do not have permission to update this employee');
    end if;
        
END;
/
grant insert on Vw_TruongPhongToPhanCong to RL_TruongPhong;
grant delete on Vw_TruongPhongToPhanCong to RL_TruongPhong;
grant update on Vw_TruongPhongToPhanCong to RL_TruongPhong;

/*
 select * from god.Vw_TruongPhongToNhanVien
begin
DBMS_RLS.DROP_POLICY(
    object_schema => 'god',
    object_name => 'NHANVIEN',
    policy_name => 'PC1_TruongPhongCS3'
);
end;

*/
