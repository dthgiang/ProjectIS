ALTER SESSION SET container = QLDTPDB;

----------------------AUDIT------------------
SELECT * FROM DBA_AUDIT_POLICIES 
WHERE object_schema = 'ATBM' 
AND object_name = 'phancong';

--Những người đã cập nhật trường THOIGIAN trong quan hệ PHANCONG. 

-- Drop if the Policy have been exist
/*
begin
DBMS_FGA.DROP_POLICY(
  object_schema => 'ATBM',
  object_name => 'phancong',
  policy_name => 'thoigian_update_audit_policy');
end;
*/

-- Create the audit Policy on Table: Phan Cong - ThoiGian
begin DBMS_FGA.ADD_POLICY(
object_schema => 'ATBM',
object_name => 'phancong',
policy_name => 'thoigian_update_audit_policy',
audit_column => 'thoigian',
audit_condition => '1=1',
statement_types => 'update');
end;
/
begin
 DBMS_FGA.ENABLE_POLICY(
  object_schema => 'ATBM',
  object_name => 'phancong',
  policy_name => 'thoigian_update_audit_policy');
end;
/
---------------
--- Test area
----------------
/*
select * from ATBM.Vw_TruongPhongToPhanCong;
update ATBM.Vw_TruongPhongToPhanCong set thoigian=TO_DATE('2022-7-4','YYYY-MM-DD') where manv='NV341' and mada='DA602';
*/
------- End test


-- Những người đã đọc trên trường LUONG và PHUCAP của người khác.

-- Drop if the Policy have been exist
/*
begin
DBMS_FGA.DROP_POLICY(
  object_schema => 'ATBM',
  object_name => 'nhanvien',
  policy_name => 'luong_phucap_audit_policy');
end;
*/

-- Create the audit Policy on Table: Nhan Vien - Luong & Phu Cap
begin DBMS_FGA.ADD_POLICY(
object_schema => 'ATBM',
object_name => 'nhanvien',
policy_name => 'luong_phucap_audit_policy',
audit_column => 'luong,phucap',
audit_condition => 'manv != USER',
statement_types => 'SELECT');
end;
/
begin
 DBMS_FGA.ENABLE_POLICY(
  object_schema => 'ATBM',
  object_name => 'nhanvien',
  policy_name => 'luong_phucap_audit_policy');
end;
/

---------------
--- Test area
----------------
/*
select * from ATBM.nhanvien;
select * from ATBM.Vw_NhanVienToNhanVien;
--kiem tra audit
select sessionid, dbuid,osuid, oshst, clientid, obj$name, policyname, scn, lsqltext, comment$text,comment$text, ntimestamp#, current_user from SYS.fga_log$;
*/

------- End test