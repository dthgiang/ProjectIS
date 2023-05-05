ALTER SESSION SET container = QLDTPDB;

----------------------AUDIT------------------
SELECT * FROM DBA_AUDIT_POLICIES 
WHERE object_schema = 'ATBM' 
AND object_name = 'phancong';
--Nh?ng ngý?i ð? c?p nh?t trý?ng THOIGIAN trong quan h? PHANCONG.
begin
DBMS_FGA.DROP_POLICY(
  object_schema => 'ATBM',
  object_name => 'phancong',
  policy_name => 'thoigian_update_audit_policy');
end;
/
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
select * from ATBM.Vw_TruongPhongToPhanCong;
update ATBM.Vw_TruongPhongToPhanCong set thoigian=TO_DATE('2022-7-4','YYYY-MM-DD') where manv='NV341' and mada='DA602';
--Nh?ng ngý?i ð? ð?c trên trý?ng LUONG và PHUCAP c?a ngý?i khác.

/
begin
DBMS_FGA.DROP_POLICY(
  object_schema => 'ATBM',
  object_name => 'nhanvien',
  policy_name => 'luong_phucap_audit_policy');
end;
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

select * from ATBM.nhanvien;
----

select * from ATBM.nhanvien;
select * from ATBM.Vw_NhanVienToNhanVien;
--kiem tra audit
select sessionid, dbuid,osuid, oshst, clientid, obj$name, policyname, scn, lsqltext, comment$text,comment$text, ntimestamp#, current_user from SYS.fga_log$;