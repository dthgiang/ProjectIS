alter session set container= qldtpdb; 

-- Cau 3a:
CREATE USER ols_giamdoc IDENTIFIED BY 123; 
CREATE USER ols_TPSXMN IDENTIFIED BY 123; 
CREATE USER ols_GDMienBac IDENTIFIED BY 123; 
grant connect to ols_giamdoc, ols_TPSXMN, ols_GDMienBac;
grant select on THONGBAO to ols_giamdoc, ols_TPSXMN, ols_GDMienBac ;

BEGIN 
    -- Giam doc co the doc duoc toan bo du lieu
    SA_USER_ADMIN.SET_USER_LABELS('region_policy','OLS_GIAMDOC','GD:SX,GC,MB:MB,MT,MN'); 
    -- Truong phong phu trach Linh vuc San Xuat o Mien Nam
    SA_USER_ADMIN.SET_USER_LABELS('region_policy','OLS_TPSXMN','TP:SX:MN'); 
    -- Giam doc Mien bac co the xem duoc ma khong phan biet linh vuc
    SA_USER_ADMIN.SET_USER_LABELS('region_policy','OLS_GDMIENBAC','GD:SX,GC,MB:MB'); 
END;
/

-- cau 3 B
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao  T1', 'Truong phong', null, null);
-- Cau 3 C
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao  T2', 'Truong phong', 'San xuat', 'Mien Trung');

-- Thong bao de test lai OLS
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao  T3 (Tat ca deu thay thong bao nay)', 'Nhan vien', null, null);

CREATE OR REPLACE FUNCTION get_obj_label ( 
 p_role IN VARCHAR2, 
 p_region IN VARCHAR2,
 p_field IN VARCHAR2) 
RETURN varchar2--LBACSYS.LBAC_LABEL 
AS 
    v_label VARCHAR2(80); 
BEGIN 
    IF p_region is null and p_field is null then
        IF UPPER(p_role) = 'GIAM DOC' THEN 
            v_label := 'GD'; 
         ELSIF UPPER(p_role) = 'TRUONG PHONG' THEN 
            v_label := 'TP'; 
         ELSE 
            v_label := 'NV'; 
         END IF; 
        RETURN CHAR_TO_LABEL('region_policy',v_label); 
    end if;
    
    IF p_region is null then
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
            v_label := v_label || 'MB'; 
         ELSIF UPPER(p_field) = 'SAN XUAT' THEN 
            v_label := v_label || 'SX'; 
         ELSE
            v_label := v_label || 'GC'; 
         END IF; 
         -- ket qua la cau lenh tao label
         RETURN CHAR_TO_LABEL('region_policy',v_label); 
    ELSIF p_field is null then
        IF UPPER(p_role) = 'GIAM DOC' THEN 
            v_label := 'GD::'; 
         ELSIF UPPER(p_role) = 'TRUONG PHONG' THEN 
            v_label := 'TP::'; 
         ELSE 
            v_label := 'NV::'; 
         END IF; 
         
         -- check khu vuc (Group)
         IF UPPER(p_region) = 'MIEN BAC' THEN 
            v_label := v_label || 'MB'; 
         ELSIF UPPER(p_region) = 'MIEN TRUNG' THEN 
            v_label := v_label || 'MT'; 
         ELSE 
            v_label := v_label || 'MN'; 
         END IF; 
        RETURN CHAR_TO_LABEL('region_policy',v_label); 
  
    else
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
    end if;
    RETURN CHAR_TO_LABEL('region_policy',v_label); 

END get_obj_label; 
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
        SET region_label = get_obj_label(obj,reg,fie) where id = p_n;     

    END LOOP; 
     CLOSE CUR; 
END;
/

SET SERVEROUTPUT ON;
exec setThongBaoLabel;
exec setUserLabel;

        
--select * from ALL_SA_DATA_LABELS;


