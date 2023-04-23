ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE ROLE RL_NHANSU;
--2 -
GRANT INSERT, UPDATE ON god.PHONGBAN TO RL_NHANSU;
--3
CREATE OR REPLACE VIEW NS_XEMNHANVIEN 
AS
SELECT MANV, TENNV, PHAI, NGAYSINH, DIACHI, SODT, 
	 DECODE( manv, sys_CONTEXT ('userenv', 'session_user'), LUONG, null) LUONG ,
	 DECODE (manv, sys_CONTEXT ('userenv', 'session_user'), PHUCAP, null) PHUCAP, 
	 VAITRO, MANQL, PHG FROM
     god.NHANVIEN 

CREATE OR REPLACE TRIGGER TR_NHANSU_INSERT_NHANVIEN
INSTEAD OF INSERT 
ON NS_XEMNHANVIEN 
FOR EACH ROW 
DECLARE
BEGIN
	insert into god.nhanvien values(:new.manv, :new.tennv, :new.phai, :new.ngaysinh,:new.diachi, :new.sodt, null,null,:new.vaitro, :new.manql, :new.phg);
END;

CREATE OR REPLACE TRIGGER TR_NHANSU_UPDATE_NHANVIEN 
INSTEAD OF UPDATE 
ON NS_XEMNHANVIEN 
FOR EACH ROW 
DECLARE
BEGIN
    IF UPDATING('luong') OR UPDATING('phucap') THEN
		RAISE_APPLICATION_ERROR(-20001, 'KHONG DUOC CAP NHAT LUONG VA PHU CAP');
    else
        update god.nhanvien set tennv=:new.tennV , phai=:new.phai, ngaysinh=:new.ngaysinh, diachi=:new.diachi, sodt=:new.sodt, vaitro=:new.vaitro, manql=:new.manql, phg=:new.phg 
        where :old.manv=manv;
    end if;
END;
grant select on god.NS_XEMNHANVIEN  to RL_nhansu;
grant insert on god.NS_XEMNHANVIEN  to RL_nhansu;
grant update on god.NS_XEMNHANVIEN  to RL_nhansu;

--test

INSERT INTO god.PHONGBAN VALUES(12,N'Nghiên c?u',null);
update god.NS_XEMNHANVIEN set luong = 10000 where manv='NV113';
insert into god.NS_XEMNHANVIEN values('NV1000','Bé 7','Nu',TO_DATE('2013-12-17','YYYY-MM-DD'), 'TPHCM', 0886725044,null, null, N'Nhân viên',null,7);



CREATE OR REPLACE PROCEDURE usp_GrantUserNHANSU
AS
    CURSOR CUR IS (SELECT MANV
                    FROM god.nhanvien
                    WHERE vaitro=N'Nhân s?');
    strSQL VARCHAR(2000);
    Usr varchar2(30);
BEGIN
    OPEN CUR;
    strSQL := 'ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE';
    EXECUTE IMMEDIATE (strSQL);
    LOOP
        FETCH CUR INTO Usr;
        EXIT WHEN CUR%NOTFOUND;


        strSQL:= 'GRANT RL_NHANSU TO '||Usr;
        EXECUTE IMMEDIATE (strSQL);
    END LOOP;
    strSQL := 'ALTER SESSION SET "_ORACLE_SCRIPT"=FALSE';
    EXECUTE IMMEDIATE (strSQL);
END;
exec usp_GrantUserNHANSU;


