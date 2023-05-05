ALTER SESSION SET container = QLDTPDB;

/

-----------------------
-- CS1 ----------------
-----------------------
-- you can test by this user--
-- Truong de an:    TDA037
-- Nhan vien:       NV100
-- Nhan su:         NS015
-- TaiChinh:        TC010
-- Truong phong:    TP040
-- Quan li:         QL0303
-- password of them: 123


-- Co quyen xem tat ca cac thuoc tinh tr�n quan he NHANVIEN va PHANCONG lien quan ?en chinh nhan vien do. 
------------
create OR REPLACE view Vw_NhanVien as
    select manv, tennv, phai, ngaysinh, diachi, sodt, decryption(luong, manv) luong, decryption(phucap, manv) phucap, vaitro, manql, phg, khuvuc, linhvuc from ATBM.NhanVien  where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER');
/

create OR REPLACE view Vw_PhanCong as
    select * from ATBM.PhanCong  where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER');
/
grant select on ATBM.Vw_NhanVien to RL_NhanVien;
grant select on ATBM.Vw_PhanCong to RL_NhanVien;


--Co the sua tren cac thuoc tinh NGAYSINH, DIACHI, SODT lien quan ?en chinh nh�n vi�n ?o. 
grant update(NGAYSINH) on ATBM.Vw_NhanVien to RL_NhanVien;
grant update(SODT) on ATBM.Vw_NhanVien to RL_NhanVien;
grant update(DIACHI) on ATBM.Vw_NhanVien to RL_NhanVien;
/

--Co the xem du lieu caa toan bo quan he PHONGBAN va DEAN
grant select on ATBM.PhongBan to RL_NhanVien;
grant select on ATBM.DeAn to RL_NhanVien;
/


-----------------------
--- <<<< CS2  >>>> ----
-----------------------


-- Quan ly co quyen nhu la mot nhan vien thong thuong 
grant RL_NhanVien to RL_QuanLy;
/
-- Duoc xem tat ca cac thuoc tinh, tru LUONG va PHUCAP trong quan he NHANVIEN do Q quan ly truc tiep .
create or replace view PH2_View_QLy_XemNhanvien
as
    select manv, tennv, phai, ngaysinh, diachi, sodt, decryption(luong, manv) luong, decryption(phucap, manv) phucap, vaitro, manql, phg, khuvuc, linhvuc from ATBM.NhanVien 
    where MaNQL = SYS_CONTEXT('USERENV', 'SESSION_USER') or MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER')
/

-- su dung VPD de che di thuoc tinh LUONG & PHU CAP
create or replace function F_ForCSPolicy(P_Schema varchar2, P_Object varchar2)
return varchar2
as
    userAcc varchar(30);
begin
    userAcc := SYS_CONTEXT('USERENV', 'SESSION_USER');
    return 'MANV = '||''''||userAcc||'''';
end;
/
BEGIN
    DBMS_RLS.add_policy(
    object_schema => 'ATBM',
    object_name => 'PH2_View_QLy_XemNhanvien',
    policy_name => 'F_CS2QuanLy',
    function_schema => 'ATBM',
    policy_function => 'F_ForCSPolicy',
    sec_relevant_cols => 'Luong, PhuCap',
    sec_relevant_cols_opt => dbms_rls.ALL_ROWS
    );
END;
/
GRANT SELECT ON ATBM.PH2_View_QLy_XemNhanvien TO RL_QUANLY;

-- Co the xem cac dong trong quan he PHANCONG lien quan den chinh Q va cac nhan vien N duyoc Q quan ly
create or replace view PH2_View_Qly_XemPhanCong
as
    select * from ATBM.phancong
    where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER') OR MANV IN (
        SELECT MANV 
        FROM ATBM.NHANVIEN 
        WHERE MaNQL = SYS_CONTEXT('USERENV', 'SESSION_USER')
    );
/ 

GRANT SELECT ON ATBM.PH2_View_Qly_XemPhanCong TO RL_QUANLY;

-------------------------------------
--- <<<< CS3 - Truong Phong >>>> ----
-------------------------------------

-- Co quyen cua Nhan vien
grant RL_NhanVien to RL_TruongPhong;
/
/* Co quyen xem all thuoc tinh tru LUONG & PHUCAP trong quan he NHANVIEN cua cac
nhan vien thuoc phong ban ma T lam truong phong */

-- tao view de cho xem cac thuoc tinh tren bang nhan vien
----------------------
create OR REPLACE view Vw_TruongPhongToNhanVien as
    select manv, tennv, phai, ngaysinh, diachi, sodt, decryption(luong, manv) luong, decryption(phucap, manv) phucap, vaitro, manql, phg, khuvuc, linhvuc from NhanVien NV join PhongBan on NV.PHG = MaPB where TrPHG = SYS_CONTEXT('USERENV', 'SESSION_USER');
/

-- su dung VPD de che di thuoc tinh LUONG & PHU CAP
----------------

BEGIN
    DBMS_RLS.add_policy(
    object_schema => 'ATBM',
    object_name => 'Vw_TruongPhongToNhanVien',
    policy_name => 'F_CS3TruongPhong',
    function_schema => 'ATBM',
    policy_function => 'F_ForCSPolicy',
    sec_relevant_cols => 'Luong, PhuCap',
    sec_relevant_cols_opt => dbms_rls.ALL_ROWS
    );
END;
/
grant select on Vw_TruongPhongToNhanVien to RL_TruongPhong;
/
-- Co the them, xoa, cap nhat tren quan he PHANCONG lien quan den cac nhan vien thuoc phong ban ma T lam truong phong
------------------------
create OR REPLACE view Vw_TruongPhongToPhanCong as
    select PC.* from Vw_TruongPhongToNhanVien NV join PhanCong PC on NV.MaNV = PC.MANV;
/



CREATE OR REPLACE TRIGGER Insert_PhongBanTruongPhong
INSTEAD OF INSERT
ON Vw_TruongPhongToPhanCong
FOR EACH ROW
DECLARE ckt int;
BEGIN
    select count(*) into ckt from ATBM.Vw_TruongPhongToNhanVien where MaNV = :NEW.MaNV;
        
    if ckt > 0 then
        insert into ATBM.PhanCong values(:NEW.MANV, :NEW.MADA, :NEW.THOIGIAN);
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
    select count(*) into ckt from ATBM.Vw_TruongPhongToNhanVien where MaNV = :OLD.MaNV;
        
    if ckt > 0 then
        delete from ATBM.PhanCong where MaNV = :OLD.MaNV and MaDA = :Old.MaDA;
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
    select count(*) into ckt from ATBM.Vw_TruongPhongToNhanVien where MaNV = :NEW.MaNV;
        
    if ckt > 0 then
        update ATBM.PhanCong set MaNV = :NEW.MANV, MaDA = :NEW.MADA, ThoiGian = :NEW.THOIGIAN
        where MaNV = :OLD.MANV and MaDA = :OLD.MADA;
    else
        RAISE_APPLICATION_ERROR(-20001, 'You do not have permission to update this employee');
    end if;
        
END;
/
grant select on Vw_TruongPhongToNhanVien to RL_TruongPhong;
grant insert on Vw_TruongPhongToPhanCong to RL_TruongPhong;
grant delete on Vw_TruongPhongToPhanCong to RL_TruongPhong;
grant update on Vw_TruongPhongToPhanCong to RL_TruongPhong;


----------------------------------
--- <<<< CS4 - Tai Chinh >>>> ----
----------------------------------
grant RL_NhanVien to RL_TAICHINH;
create or replace view view_allnhanvien
as
    
    select manv, tennv, phai, ngaysinh, diachi, sodt, decryption(luong, manv) luong, decryption(phucap, manv) phucap, vaitro, manql, phg, khuvuc, linhvuc from nhanvien;
/   
GRANT SELECT ON view_allnhanvien TO RL_TAICHINH;
GRANT SELECT ON phancong TO RL_TAICHINH;
GRANT UPDATE  ON view_allnhanvien TO RL_TAICHINH;

/
CREATE OR REPLACE TRIGGER update_view_allnhanvien
INSTEAD OF UPDATE 
ON view_allnhanvien 
FOR EACH ROW 
BEGIN
    IF :new.luong <> :old.luong THEN
        UPDATE nhanvien SET luong = encryption(UTL_RAW.CAST_TO_RAW(:new.luong), manv) WHERE manv = :old.manv;
    END IF;
    
    IF :new.phucap <> :old.phucap THEN
        UPDATE nhanvien SET phucap = encryption(UTL_RAW.CAST_TO_RAW(:new.phucap), manv) WHERE manv = :old.manv;
    END IF;
END;

/
SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'RL_TAICHINH';

--------------------------------
--- <<<< CS5 - Nhan su >>>> ----
--------------------------------
GRANT RL_NHANVIEN TO RL_NHANSU;
--2 -
GRANT INSERT, UPDATE ON PHONGBAN TO RL_NHANSU;
--3
/

CREATE OR REPLACE VIEW NS_XEMNHANVIEN 
AS
SELECT MANV, TENNV, PHAI, NGAYSINH, DIACHI, SODT, 
	 DECODE( manv, sys_CONTEXT ('userenv', 'session_user'), decryption(luong, manv) , null) LUONG ,
	 DECODE (manv, sys_CONTEXT ('userenv', 'session_user'), decryption(PHUCAP, manv) , null) PHUCAP, 
	 VAITRO, MANQL, PHG, khuvuc, linhvuc FROM
     NHANVIEN 
/
CREATE OR REPLACE TRIGGER TR_NHANSU_INSERT_NHANVIEN
INSTEAD OF INSERT 
ON NS_XEMNHANVIEN 
FOR EACH ROW 
DECLARE
BEGIN
	insert into nhanvien values(:new.manv, :new.tennv, :new.phai, :new.ngaysinh,:new.diachi, :new.sodt, '0','0',:new.vaitro, :new.manql, :new.phg,'123', :new.khuvuc, :new.linhvuc);
END;
/
CREATE OR REPLACE TRIGGER TR_NHANSU_UPDATE_NHANVIEN 
INSTEAD OF UPDATE 
ON NS_XEMNHANVIEN 
FOR EACH ROW 
DECLARE
BEGIN
    IF UPDATING('luong') OR UPDATING('phucap') THEN
		RAISE_APPLICATION_ERROR(-20001, 'KHONG DUOC CAP NHAT LUONG VA PHU CAP');
    else
        update nhanvien set tennv=:new.tennV , phai=:new.phai, ngaysinh=:new.ngaysinh, diachi=:new.diachi, sodt=:new.sodt, vaitro=:new.vaitro, manql=:new.manql, phg=:new.phg, khuvuc=:new.khuvuc, linhvuc=:new.linhvuc
        where :old.manv=manv;
    end if;
END;
/
grant select on NS_XEMNHANVIEN  to RL_NHANSU;
grant insert on NS_XEMNHANVIEN  to RL_NHANSU;
grant insert on NS_XEMNHANVIEN to RL_NHANSU;

grant update on NS_XEMNHANVIEN  to RL_NHANSU;

-------------------------------------
--- <<<< CS6 - Truong De An >>>> ----
-------------------------------------
-- Co quyen cua 1 nhan vien
grant RL_NhanVien to RL_TruongDeAn;

-- Co quyen them, xoa, sua tren quan he DeAn
GRANT INSERT, DELETE, UPDATE ON ATBM.DEAN TO RL_TRUONGDEAN; 


