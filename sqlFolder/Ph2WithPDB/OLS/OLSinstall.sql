---------------------------------------

-- Use OLS_ADMIN to run this script ---

---------------------------------------

--- How to test ----------------
/* 
B1: Chay script nay
B2:Connect vao user bat ki cua he thong ( Nen test ca 6 loai)
B3: roi select * from OLS_ADMIN.THONGBAO; 
B4: em ket qua tra ve
Truong phong + Giam doc se tra ve hon 1 dong du lieu
Cac nhan vien con lai se tra ve duy nhat 1 dong du lieu
*/

BEGIN
	SA_SYSDBA.CREATE_POLICY( 
    policy_name => 'region_policy', 
    column_name => 'region_label', 
    default_options => 'read_control, update_control' 
    ); 
END; 

/ 
--B13: ENABLE POLICY V?A T?O 
EXEC SA_SYSDBA.ENABLE_POLICY ('region_policy'); 

------------
--tao level 
------------

EXECUTE SA_COMPONENTS.CREATE_LEVEL('region_policy',3000,'NV','Nhan vien'); 
EXECUTE SA_COMPONENTS.CREATE_LEVEL('region_policy',6000,'TP','Truong phong'); 
EXECUTE SA_COMPONENTS.CREATE_LEVEL('region_policy',9000,'GD','Giam doc'); 

-----------------
--tao Compartment
-----------------

EXECUTE  SA_COMPONENTS.CREATE_COMPARTMENT('region_policy',1000,'MB','Mua ban'); 
EXECUTE  SA_COMPONENTS.CREATE_COMPARTMENT('region_policy',100,'SX','San xuat'); 
EXECUTE  SA_COMPONENTS.CREATE_COMPARTMENT('region_policy',10,'GC','Gia cong'); 


-----------------
--tao Group
-----------------
EXECUTE SA_COMPONENTS.CREATE_GROUP('region_policy',100,'MB','Mien Bac'); 
EXECUTE SA_COMPONENTS.CREATE_GROUP('region_policy',110,'MT','Mien Trung'); 
EXECUTE SA_COMPONENTS.CREATE_GROUP('region_policy',120,'MN','Mien Nam'); 

---
-- B16:CAP QUYEN CHO ADMIN TREN OLS POLICY
EXECUTE SA_USER_ADMIN.SET_USER_PRIVS('region_policy','ols_admin','FULL,PROFILE_ACCESS'); 
----

----------------------------------------
-- Function to assign label to data
--- Return a label
CREATE OR REPLACE FUNCTION get_object_label ( 
 p_role IN VARCHAR2, 
 p_region IN VARCHAR2,
 p_field IN VARCHAR2) 
RETURN varchar2--LBACSYS.LBAC_LABEL 
AS 
    v_label VARCHAR2(80); 
BEGIN 
    -- Check vai tro (level)
     IF UPPER(p_role) = 'GIAM DOC' THEN 
        v_label := 'GD:'; 
     ELSIF UPPER(p_role) = 'TRUONG PHONG' THEN 
        v_label := 'TP:'; 
     ELSE 
        v_label := 'NV:'; 
     END IF; 
     
     --- check linh vuc (compartment)
    IF UPPER(p_field)= 'MUA BAN' THEN 
        v_label := v_label || 'MB:'; 
     ELSIF UPPER(p_field) = 'SAN XUAT' THEN 
        v_label := v_label || 'SX:'; 
     ELSE
        v_label := v_label || 'GC:'; 
     END IF; 
     
     -- check khu vuc (Group)
     IF UPPER(p_region) = 'MIEN BAC' THEN 
        v_label := v_label || 'MB'; 
     ELSIF UPPER(p_region) = 'MIEN TRUNG' THEN 
        v_label := v_label || 'MT'; 
     ELSE 
        v_label := v_label || 'MN'; 
     END IF; 
     
     -- ket qua la cau lenh tao label
     RETURN CHAR_TO_LABEL('region_policy',v_label); 
END get_object_label; 
/ 

----------------------------------------
-- Function to get label from user Nhan Vien)
--- Same with get_user_label - just change return type
---- Return a string

CREATE OR REPLACE FUNCTION get_user_label ( 
 p_role IN VARCHAR2, 
 p_region IN VARCHAR2, 
 p_field IN VARCHAR2) 
RETURN varchar2--LBACSYS.LBAC_LABEL 
AS 
    v_label VARCHAR2(80); 
BEGIN 
    -- Check vai tro (level)
     IF UPPER(p_role) = 'GIAM DOC' THEN 
        v_label := 'GD:'; 
     ELSIF UPPER(p_role) = 'TRUONG PHONG' THEN 
        v_label := 'TP:'; 
     ELSE 
        v_label := 'NV:'; 
     END IF; 
     
     --- check linh vuc (compartment)
    IF UPPER(p_field)= 'MUA BAN' THEN 
        v_label := v_label || 'MB:'; 
     ELSIF UPPER(p_field) = 'SAN XUAT' THEN 
        v_label := v_label || 'SX:'; 
     ELSE
        v_label := v_label || 'GC:'; 
     END IF; 
     
     -- check khu vuc (Group)
     IF UPPER(p_region) = 'MIEN BAC' THEN 
        v_label := v_label || 'MB'; 
     ELSIF UPPER(p_region) = 'MIEN TRUNG' THEN 
        v_label := v_label || 'MT'; 
     ELSE 
        v_label := v_label || 'MN'; 
     END IF; 
     
     -- ket qua la cau lenh tao label
     RETURN v_label; 
END get_user_label; 
/ 


--- Bai 3 OLS
------------------------
-- Create table Thong bao, this table will be assigned Label and apply OLS
--
drop table ThongBao;

CREATE TABLE ThongBao ( 
id NUMBER(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
NoiDung VARCHAR2(300), 
DoiTuong VARCHAR2(30), 
LinhVuc VARCHAR2(30), 
KhuVuc VARCHAR2(20),
CONSTRAINT ThongBao_pk PRIMARY KEY (id)
);
/

delete from THONGBAO;
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc San xuat cua khu vuc Mien Bac', 'Giam doc','San xuat','Mien Bac');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc San xuat cua khu vuc Mien Trung', 'Giam doc','San xuat','Mien Trung');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc San xuat cua khu vuc Mien Nam', 'Giam doc','San xuat','Mien Nam');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Gia Cong cua khu vuc Mien Bac', 'Giam doc','Gia Cong','Mien Bac');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Gia Cong cua khu vuc Mien Trung', 'Giam doc','Gia Cong','Mien Trung');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Gia Cong cua khu vuc Mien Nam', 'Giam doc','Gia Cong','Mien Nam');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Mua ban cua khu vuc Mien Bac', 'Giam doc','Mua ban','Mien Bac');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Mua ban cua khu vuc Mien Trung', 'Giam doc','Mua ban','Mien Trung');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Mua ban cua khu vuc Mien Nam', 'Giam doc','Mua ban','Mien Nam');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc San xuat cua khu vuc Mien Bac', 'Truong phong','San xuat','Mien Bac');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc San xuat cua khu vuc Mien Trung', 'Truong phong','San xuat','Mien Trung');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc San xuat cua khu vuc Mien Nam', 'Truong phong','San xuat','Mien Nam');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Gia Cong cua khu vuc Mien Bac', 'Truong phong','Gia Cong','Mien Bac');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Gia Cong cua khu vuc Mien Trung', 'Truong phong','Gia Cong','Mien Trung');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Gia Cong cua khu vuc Mien Nam', 'Truong phong','Gia Cong','Mien Nam');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Mua ban cua khu vuc Mien Bac', 'Truong phong','Mua ban','Mien Bac');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Mua ban cua khu vuc Mien Trung', 'Truong phong','Mua ban','Mien Trung');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Mua ban cua khu vuc Mien Nam', 'Truong phong','Mua ban','Mien Nam');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc San xuat cua khu vuc Mien Bac', 'Nhan vien','San xuat','Mien Bac');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc San xuat cua khu vuc Mien Trung', 'Nhan vien','San xuat','Mien Trung');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc San xuat cua khu vuc Mien Nam', 'Nhan vien','San xuat','Mien Nam');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Gia Cong cua khu vuc Mien Bac', 'Nhan vien','Gia Cong','Mien Bac');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Gia Cong cua khu vuc Mien Trung', 'Nhan vien','Gia Cong','Mien Trung');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Gia Cong cua khu vuc Mien Nam', 'Nhan vien','Gia Cong','Mien Nam');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Mua ban cua khu vuc Mien Bac', 'Nhan vien','Mua ban','Mien Bac');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Mua ban cua khu vuc Mien Trung', 'Nhan vien','Mua ban','Mien Trung');
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Mua ban cua khu vuc Mien Nam', 'Nhan vien','Mua ban','Mien Nam');
---- da 
/*
BEGIN
SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('REGION_POLICY','OLS_ADMIN','THONGBAO'); 
END;
*/
BEGIN 
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY ( 
     policy_name => 'REGION_POLICY', 
     schema_name => 'OLS_ADMIN', 
     table_name => 'THONGBAO', 
     table_options => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL', 
     label_function => 'OLS_ADMIN.get_object_label(:new.DOITUONG,:new.KHUVUC,:new.LINHVUC)', 
     predicate => NULL); 
END; 
/
-- enable table policy
BEGIN 
    SA_POLICY_ADMIN.ENABLE_TABLE_POLICY ( 
     policy_name => 'REGION_POLICY', 
     schema_name => 'OLS_ADMIN', 
     table_name => 'THONGBAO');
END; 
/

 
--- Proc thuc hien gan Label cho data cua bang Thong Bao
----
create or replace procedure setThongBaoLabel
as
CURSOR CUR IS SELECT DOITUONG, LINHVUC, KHUVUC, ID  FROM THONGBAO; 
 obj VARCHAR2(30); 
 reg VARCHAR2(30); 
 fie VARCHAR2(30); 
 p_n NUMBER(10);
BEGIN 
     OPEN CUR; 
     LOOP 
     FETCH cur into obj, fie,reg,p_n; 
     IF cur%NOTFOUND THEN 
        EXIT; 
     END IF; 

    UPDATE THONGBAO 
        SET region_label = get_object_label(obj,reg,fie) where id = p_n;     
         dbms_output.put_line( getUserLabel(obj, req, fie );

    END LOOP; 
     CLOSE CUR; 
END;


--- Proc thuc hien gan Label cho user trong bang Nhan Vien
----
create or replace procedure setUserLabel
as
CURSOR CUR IS SELECT VAITRO, LINHVUC, KHUVUC, MANV  FROM ATBM.NHANVIEN; 
 obj VARCHAR2(30); 
 reg VARCHAR2(30); 
 fie VARCHAR2(30); 
 p_n VARCHAR2(20);
 temp VARCHAR2(100);
 sqlCmd VARCHAR2(300);
BEGIN 
     OPEN CUR; 
     LOOP 
     FETCH cur into obj, fie,reg,p_n; 
     IF cur%NOTFOUND THEN 
        EXIT; 
     END IF; 
     select get_user_label(obj,reg,fie) into temp from ATBM.NHANVIEN where MANV = p_n;   
     
     sqlCmd := 'BEGIN SA_USER_ADMIN.SET_USER_LABELS(''region_policy'','''|| p_n || ''',''' || temp ||'''); END;';
    EXECUTE IMMEDIATE (sqlCmd);
    END LOOP; 
     CLOSE CUR;  
END;
/

-- Cap quyen doc tren bang thong bao cho toan bo user trong Bang Nhan Vien
----
grant select on Thongbao to RL_NHANVIEN;
/

-- Thuc thi viec gian Nhan ( assign label)
SET SERVEROUTPUT ON;
exec setThongBaoLabel;
exec setUserLabel;



/*
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER ols_giamdoc IDENTIFIED BY 123; 
CREATE USER ols_TPSXMN IDENTIFIED BY 123; 
CREATE USER ols_GDMienBac IDENTIFIED BY 123; 
grant connect to ols_giamdoc, ols_TPSXMN, ols_GDMienBac;
grant select on THONGBAO to ols_giamdoc, ols_TPSXMN, ols_GDMienBac ;
*/

