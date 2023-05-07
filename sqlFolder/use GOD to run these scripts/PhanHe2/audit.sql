ALTER SESSION SET container = QLDTPDB;
--------- Grant quyen xem audit cho giam doc
grant select on  SYS.fga_log$ to ATBM with grant option;
grant select on  SYS.fga_log$ to RL_GIAMDOC;
 /
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
select * from ATBM.View_allNhanVien;
--kiem tra audit
select sessionid, dbuid,osuid, oshst, clientid, obj$name, policyname, scn, lsqltext, comment$text,comment$text, ntimestamp#, current_user from SYS.fga_log$;
*/

------- End test



-------------- Audit 4c
------------------------
--  Một người không thuộc vai trò “Tài chính” nhưng đã cập nhật thành công trên trường LUONG và PHUCAP. 
-- Drop if the Policy have been exist
/*
begin
DBMS_FGA.DROP_POLICY(
  object_schema => 'ATBM',
  object_name => 'nhanvien',
  policy_name => 'luong_phucap_other_audit_policy');
end;
*/

select * from NHANVIEN;
-- Create the audit Policy on Table: Nhan Vien - Luong & Phu Cap
begin DBMS_FGA.ADD_POLICY(
object_schema => 'ATBM',
object_name => 'nhanvien',
policy_name => 'luong_phucap_other_audit_policy',
audit_column => 'luong,phucap',
audit_condition => 'VAITRO != ' || '''TAICHINH''',
statement_types => 'UPDATE');
end;
/
begin
 DBMS_FGA.ENABLE_POLICY(
  object_schema => 'ATBM',
  object_name => 'nhanvien',
  policy_name => 'luong_phucap_other_audit_policy');
end;
/
---------------
--- Test area
----------------
/*
select * from ATBM.nhanvien;
update ATBM.NHANVIEN  set  TENNV = 'AKAZA', PHUCAP = '99999' where MANV = 'NV55';
select * from ATBM.Vw_NhanVien;
--kiem tra audit
SELECT *
FROM UNIFIED_AUDIT_TRAIL
where FGA_POLICY_NAME  = 'LUONG_PHUCAP_OTHER_AUDIT_POLICY';

SELECT * FROM dba_audit_policies;
SELECT * FROM dba_audit_policy_columns;

*/

------- End test

-------------------
----- Dung ca SYS lan ATBM run 2 cai nay: because Oracle khong co grant option cai dictionary nay
-----------------------
create or replace view vw_ViewAudit as
    SELECT OS_USERNAME as xUser, ACTION_NAME, OBJECT_SCHEMA as xSchema, OBJECT_NAME as TableName, TO_CHAR(EVENT_TIMESTAMP, 'DD-MM-YYYY') AS DayAccess, USERHOST, TERMINAL,CLIENT_PROGRAM_NAME, SESSIONID, DBID, AUTHENTICATION_TYPE 
    FROM UNIFIED_AUDIT_TRAIL
    where FGA_POLICY_NAME  = 'LUONG_PHUCAP_AUDIT_POLICY' OR FGA_POLICY_NAME  = 'LUONG_PHUCAP_OTHER_AUDIT_POLICY' OR FGA_POLICY_NAME  = 'THOIGIAN_UPDATE_AUDIT_POLICY'; --thoigian_update_audit_policy
/
create or replace view vw_ViewLog as
    select sessionid, dbuid,osuid, oshst, clientid, obj$name, policyname, scn, lsqltext, comment$text, ntimestamp#, current_user 
    from SYS.fga_log$
/
-- dung sys de grant
grant select on ATBM.vw_ViewAudit to RL_GiamDoc;
grant select on ATBM.vw_ViewLog to RL_GiamDoc;
grant select on  SYS.fga_log$ to RL_GiamDoc;
/
