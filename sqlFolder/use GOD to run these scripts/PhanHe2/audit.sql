
----------------------AUDIT------------------
--Nh?ng ngý?i ð? c?p nh?t trý?ng THOIGIAN trong quan h? PHANCONG.
begin
DBMS_FGA.DROP_POLICY(
  object_schema => 'god',
  object_name => 'phancong',
  policy_name => 'thoigian_update_audit_policy');
end;

begin DBMS_FGA.ADD_POLICY(
object_schema => 'god',
object_name => 'phancong',
policy_name => 'thoigian_update_audit_policy',
audit_column => 'thoigian',
audit_condition => '1=1',
statement_types => 'update');
end;

begin
 DBMS_FGA.ENABLE_POLICY(
  object_schema => 'god',
  object_name => 'phancong',
  policy_name => 'thoigian_update_audit_policy');
end;
select * from god.Vw_TruongPhongToPhanCong;
update god.Vw_TruongPhongToPhanCong set thoigian=TO_DATE('2022-7-4','YYYY-MM-DD') where manv='NV341' and mada='DA602';
--Nh?ng ngý?i ð? ð?c trên trý?ng LUONG và PHUCAP c?a ngý?i khác.


begin
DBMS_FGA.DROP_POLICY(
  object_schema => 'god',
  object_name => 'nhanvien',
  policy_name => 'luong_phucap_audit_policy');
end;
begin DBMS_FGA.ADD_POLICY(
object_schema => 'god',
object_name => 'nhanvien',
policy_name => 'luong_phucap_audit_policy',
audit_column => 'luong,phucap',
audit_condition => 'manv != USER',
statement_types => 'SELECT');
end;

begin
 DBMS_FGA.ENABLE_POLICY(
  object_schema => 'god',
  object_name => 'nhanvien',
  policy_name => 'luong_phucap_audit_policy');
end;
select * from god.nhanvien;
----

select * from god.nhanvien;
select * from god.Vw_NhanVienToNhanVien;
--kiem tra audit
select * from sys.fga_log$;