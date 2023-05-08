
-- Tao Chinh Sách 
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


--- Bai 3 OLS
------------------------
-- Create table Thong bao, this table will be assigned Label and apply OLS
--
drop table ThongBao;

CREATE TABLE ThongBao ( 
id NUMBER(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
NoiDung VARCHAR2(300), 
ThoiGian DATE,
NGUOIGUI VARCHAR2(100),
DoiTuong VARCHAR2(100), 
LinhVuc VARCHAR2(100), 
KhuVuc VARCHAR2(100),
CONSTRAINT ThongBao_pk PRIMARY KEY (id)
);
/
grant select on Thongbao to RL_NHANVIEN;
/

delete from THONGBAO;
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc San xuat cua khu vuc Mien Bac',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Giam doc','San xuat','Mien Bac');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc San xuat cua khu vuc Mien Trung',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Giam doc','San xuat','Mien Trung');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc San xuat cua khu vuc Mien Nam',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Giam doc','San xuat','Mien Nam');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Gia Cong cua khu vuc Mien Bac',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Giam doc','Gia Cong','Mien Bac');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Gia Cong cua khu vuc Mien Trung',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Giam doc','Gia Cong','Mien Trung');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Gia Cong cua khu vuc Mien Nam',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Giam doc','Gia Cong','Mien Nam');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Mua ban cua khu vuc Mien Bac',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Giam doc','Mua ban','Mien Bac');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Mua ban cua khu vuc Mien Trung',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Giam doc','Mua ban','Mien Trung');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Giam doc thuoc linh vuc Mua ban cua khu vuc Mien Nam',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Giam doc','Mua ban','Mien Nam');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc San xuat cua khu vuc Mien Bac',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Truong phong','San xuat','Mien Bac');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc San xuat cua khu vuc Mien Trung',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Truong phong','San xuat','Mien Trung');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc San xuat cua khu vuc Mien Nam',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Truong phong','San xuat','Mien Nam');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Gia Cong cua khu vuc Mien Bac',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Truong phong','Gia Cong','Mien Bac');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Gia Cong cua khu vuc Mien Trung',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Truong phong','Gia Cong','Mien Trung');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Gia Cong cua khu vuc Mien Nam',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Truong phong','Gia Cong','Mien Nam');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Mua ban cua khu vuc Mien Bac',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Truong phong','Mua ban','Mien Bac');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Mua ban cua khu vuc Mien Trung',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Truong phong','Mua ban','Mien Trung');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Truong phong thuoc linh vuc Mua ban cua khu vuc Mien Nam',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Truong phong','Mua ban','Mien Nam');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc San xuat cua khu vuc Mien Bac',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Nhan vien','San xuat','Mien Bac');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc San xuat cua khu vuc Mien Trung',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Nhan vien','San xuat','Mien Trung');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc San xuat cua khu vuc Mien Nam',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Nhan vien','San xuat','Mien Nam');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Gia Cong cua khu vuc Mien Bac',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Nhan vien','Gia Cong','Mien Bac');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Gia Cong cua khu vuc Mien Trung',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Nhan vien','Gia Cong','Mien Trung');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Gia Cong cua khu vuc Mien Nam',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Nhan vien','Gia Cong','Mien Nam');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Mua ban cua khu vuc Mien Bac',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Nhan vien','Mua ban','Mien Bac');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Mua ban cua khu vuc Mien Trung',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Nhan vien','Mua ban','Mien Trung');
insert into THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao toi Nhan vien thuoc linh vuc Mua ban cua khu vuc Mien Nam',TO_DATE('30-04-1975','DD-MM-YYYY'), 'Admin', 'Nhan vien','Mua ban','Mien Nam');
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
     table_options => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL, LABEL_DEFAULT', --HIDE
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

CREATE OR REPLACE FUNCTION get_label ( 
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
END get_label; 
/ 
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
        SET region_label = CHAR_TO_LABEL(get_label(obj,reg,fie)) where id = p_n;     

    END LOOP; 
     CLOSE CUR; 
END;
/

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
     select get_label(obj,reg,fie) into temp from ATBM.NHANVIEN where MANV = p_n;   
     
     sqlCmd := 'BEGIN SA_USER_ADMIN.SET_USER_LABELS(''region_policy'','''|| p_n || ''',''' || temp ||'''); END;';
    EXECUTE IMMEDIATE (sqlCmd);
    END LOOP; 
     CLOSE CUR;  
END;
/



create or replace procedure assignDataLabel(p_noiDung IN VARCHAR2, p_nguoiGui IN VARCHAR2,p_doiTuong IN VARCHAR2,
                                            p_linhVuc IN VARCHAR2,p_khuVuc IN VARCHAR2, p_label IN VARCHAR2)
as
    strSql VARCHAR2(300);
BEGIN
    INSERT INTO OLS_ADMIN.THONGBAO (NOIDUNG,THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC, REGION_LABEL)
        VALUES(p_noiDung,SYSDATE,p_nguoiGui, p_doiTuong, p_linhVuc, p_khuVuc, CHAR_TO_LABEL('REGION_POLICY', UPPER(p_label)));
        
    strSql := 'BEGIN SA_USER_ADMIN.SET_USER_LABELS(''region_policy'',''OLS_CULY'',''NV''); END;';
    EXECUTE IMMEDIATE (strSql);
    EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;

/      
create or replace procedure assignUserLabel(p_user IN VARCHAR2, p_label IN VARCHAR2)
as
    strSql VARCHAR2(300);
BEGIN
    strSql := 'BEGIN SA_USER_ADMIN.SET_USER_LABELS(''region_policy'','''|| UPPER(p_user) || ''',''' || UPPER(p_label) ||'''); END;';
    EXECUTE IMMEDIATE (strSql);
    
    EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;  
/
grant create view TO OLS_ADMIN with admin option;



/
--select * from ALL_SA_DATA_LABELS;

---- for code 
create or replace view vw_xemThongBao as
    select NoiDung,THOIGIAN, NGUOIGUI, LinhVuc, KhuVuc from OLS_ADMIN.THONGBAO;
/
grant select on vw_xemThongBao to RL_NHANVIEN;
/
-- Only for Admin
create or replace view vw_xemThongBaoAdmin as
    select ID, NoiDung, DoiTuong, LinhVuc, KhuVuc, LABEL_TO_CHAR(REGION_LABEL) Labels from OLS_ADMIN.THONGBAO;
------------------------
/
exec assignUserLabel('GD001','GD:SX,MB,GC:MB,MT,MN');
exec assignUserLabel('TP040','TP:SX:MN');
exec assignUserLabel('GD004','GD:SX,MB,GC:MB');


exec assignDataLabel('Thong bao T1', 'Giam Doc', 'Truong phong', null, null, 'TP');
exec assignDataLabel('Thong bao T2', 'Giam Doc', 'Truong phong', 'San xuat', 'Mien Trung', 'TP:SX:MT');


-- Gui thong bao cho toan bo nhan vien
exec assignDataLabel('Thong bao T3', 'Giam Doc', 'Nhan vien', null, null, 'NV');
-- Gửi thông báo cho toàn bộ nhân viên thuộc lĩnh vực sản xuất
exec assignDataLabel('Thong bao T4', 'Giam Doc', 'Nhan vien', 'San xuat', null, 'NV:SX');
-- Gửi thông báo cho toàn bộ trưởng phòng thuộc lĩnh vực sản xuất của miền Nam và miền Trung
exec assignDataLabel('Thong bao T5', 'Giam Doc', 'Truong Phong', 'San xuat', 'Mien Nam, Mien Trung', 'TP:SX:MN, MT');



