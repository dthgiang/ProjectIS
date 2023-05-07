alter session set container= qldtpdb; 

-- Cau 3a:
CREATE USER ols_giamdoc IDENTIFIED BY 123; 
CREATE USER ols_TPSXMN IDENTIFIED BY 123; 
CREATE USER ols_CULY IDENTIFIED BY 123; 
CREATE USER ols_TPSXMT IDENTIFIED BY 123; -- this user for test 3b
CREATE USER ols_GDMienBac IDENTIFIED BY 123; 
grant connect to ols_giamdoc, ols_TPSXMN, ols_GDMienBac, OLS_TPSXMT, OLS_CULY;
grant select on THONGBAO to ols_giamdoc, ols_TPSXMN, ols_GDMienBac, OLS_TPSXMT, OLS_CULY ;

BEGIN 
    -- Giam doc co the doc duoc toan bo du lieu
    SA_USER_ADMIN.SET_USER_LABELS('region_policy','OLS_GIAMDOC','GD:SX,GC,MB:MB,MT,MN'); 
    -- Truong phong phu trach Linh vuc San Xuat o Mien Nam
    SA_USER_ADMIN.SET_USER_LABELS('region_policy','OLS_TPSXMN','TP:SX:MN'); 
    SA_USER_ADMIN.SET_USER_LABELS('region_policy','OLS_TPSXMT','TP:SX:MT'); 

    -- Giam doc Mien bac co the xem duoc ma khong phan biet linh vuc
    SA_USER_ADMIN.SET_USER_LABELS('region_policy','OLS_GDMIENBAC','GD:SX,GC,MB:MB'); 
END;
/


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


create or replace procedure assignDataLabel(p_noiDung IN VARCHAR2,p_doiTuong IN VARCHAR2,p_linhVuc IN VARCHAR2,p_khuVuc IN VARCHAR2, p_label IN VARCHAR2)
as
    strSql VARCHAR2(300);
BEGIN
    INSERT INTO OLS_ADMIN.THONGBAO (NOIDUNG, DOITUONG, LINHVUC, KHUVUC, REGION_LABEL)
        VALUES(p_noiDung, p_doiTuong, p_linhVuc, p_khuVuc, CHAR_TO_LABEL('REGION_POLICY', UPPER(p_label)));
        
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

/*
GRANT EXECUTE ON sa_components TO RL_NhanSu; 
GRANT EXECUTE ON sa_user_admin TO RL_NhanSu; 
GRANT EXECUTE ON sa_label_admin TO RL_NhanSu; 
GRANT EXECUTE ON sa_policy_admin TO RL_NhanSu; 
GRANT EXECUTE ON sa_audit_admin TO RL_NhanSu; 
GRANT EXECUTE ON SA_SESSION TO RL_NhanSu; 
GRANT LBAC_DBA TO RL_NhanSu; 
GRANT EXECUTE ON sa_sysdba TO RL_NhanSu; 
GRANT EXECUTE ON to_lbac_data_label TO RL_NhanSu; 
grant region_policy_DBA to RL_NhanSu;
grant execute OLS_Admin.region_policy to RL_NhanSu;

*/
grant execute on assignDataLabel to RL_NhanSu;
grant execute on assignUserLabel to RL_NhanSu;

/
--select * from ALL_SA_DATA_LABELS;

---- for code 
create or replace view vw_xemThongBao as
    select NoiDung,LinhVuc, KhuVuc from OLS_ADMIN.THONGBAO;
/
grant select on vw_xemThongBao to RL_NHANVIEN;
/
-- Only for Admin
create or replace view vw_xemThongBaoAdmin as
    select ID, NoiDung, DoiTuong, LinhVuc, KhuVuc, LABEL_TO_CHAR(REGION_LABEL) Labels from OLS_ADMIN.THONGBAO;
------------------------
---
----------------------
-- cau 3 B
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao  T1', 'Truong phong', null, null);
-- Cau 3 C
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao  T2', 'Truong phong', 'San xuat', 'Mien Trung');

-- Thong bao de test lai OLS
insert into THONGBAO(NOIDUNG, DOITUONG, LINHVUC, KHUVUC) VALUES('Thong bao  T3 (Tat ca deu thay thong bao nay)', 'Nhan vien', null, null);
