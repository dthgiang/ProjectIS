select ID, NOIDUNG, DOITUONG,LINHVUC,KHUVUC, LABEL_TO_CHAR(REGION_LABEL) from OLS_ADMIN.THONGBAO;

select * from ALL_SA_LABELS;
select * from DBA_SA_DATA_LABELS;

BEGIN 
    -- Giam doc co the doc duoc toan bo du lieu
    SA_USER_ADMIN.SET_USER_LABELS('region_policy','OLS_TPSXMT','TP');
END;