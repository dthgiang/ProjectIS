select ID, NOIDUNG, DOITUONG,LINHVUC,KHUVUC, LABEL_TO_CHAR(REGION_LABEL) from OLS_ADMIN.THONGBAO;
delete from THONGBAO where id > 30;
shutdown IMMEDIATE; 
startup;
select vaitro from ATBM.VW_NHANVIEN
select * from OLS_ADMIN.VW_XEMTHONGBAO;
select * from ALL_SA_LABELS;
select * from DBA_SA_DATA_LABELS;

exec assignDataLabel('This was sent for all final final ', 'Nhan vien', null, null, 'NV::MB,MT,MN');
exec assignUserLabel('OLS_TPSXMT', 'GD');  
/
BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS('region_policy','OLS_TPSXMT','TP:SX:MT');
END;
/

select * from ALL_SA_USER_LABELs;