ALTER SESSION SET container = QLDTPDB;
/
grant execute on sys.dbms_crypto to ATBM;
--grant select on ATBM.VW_NHANVIEN to NV000;
/
select *
from dba_tab_privs
where table_name = 'DBMS_CRYPTO'
  and owner = 'SYS';
/

CREATE OR REPLACE FUNCTION decryption (data IN RAW, manhnavien in varchar)
  RETURN VARCHAR2
AS
  result varchar2(1000);
  l_key raw(20);
BEGIN
  select key into l_key from save_key where UPPER(manv)=UPPER(manhnavien);
  SELECT UTL_RAW.CAST_TO_varchar2(DBMS_CRYPTO.DECRYPT(data, 4353, l_key ))INTO result FROM dual;
  RETURN result;
END;
/

CREATE OR REPLACE FUNCTION  encryption (data IN RAW, manhnavien in varchar)
  RETURN raw
AS
    result raw(2000);
    l_key raw(20);
BEGIN
    select key into l_key from save_key where UPPER(manv)=UPPER(manhnavien);
    SELECT DBMS_CRYPTO.enCRYPT(data, 4353, l_key) INTO result FROM dual;
    RETURN result;
END;
 
/
CREATE OR REPLACE FUNCTION GET_KEY (n INTEGER)
RETURN raw
as
  l_key RAW(16);
BEGIN
  DBMS_RANDOM.initialize(ROUND(DBMS_UTILITY.get_time));
  l_key := UTL_RAW.cast_to_raw(DBMS_RANDOM.STRING('U', n));
  return l_key;
END;
/
select GET_KEY(3) from dual;
/

CREATE OR REPLACE TRIGGER TRG_INSERT_NHANVIEN
BEFORE INSERT ON NHANVIEN 
FOR EACH ROW 
DECLARE 
    v_key RAW(20);

BEGIN
    
    v_key := GET_KEY(10);
    INSERT INTO SAVE_KEY VALUES(:new.manv, v_key);
    
    :new.luong := encryption(UTL_RAW.CAST_TO_RAW(:new.luong), :new.manv);
    :new.phucap := encryption(UTL_RAW.CAST_TO_RAW(:new.phucap), :new.manv);

END;
--thay doi khoa hang loat
/
create or replace procedure new_key
as  
    CURSOR CUR IS (SELECT MANV, decryption(luong, manv), decryption(phucap, manv) FROM ATBM.nhanvien where vaitro != 'Admin');
    strsql VARCHAR2(1000);
    luong_old VARCHAR2(255);
    phucap_old VARCHAR2(255);
    v_manv VARCHAR2(100);
    new_key raw(200);
    luong_new raw(2000);
    phucap_new raw(2000);
BEGIN
    OPEN CUR;
    LOOP
        FETCH CUR INTO v_manv, luong_old, phucap_old;
        EXIT WHEN CUR%NOTFOUND;
        
        select GET_KEY(10) into new_key from dual;

        strsql := 'update atbm.save_key set key='''||new_key||''' where manv='''||v_manv||'''';
        EXECUTE IMMEDIATE (strsql);
        
        SELECT DBMS_CRYPTO.enCRYPT(UTL_RAW.CAST_TO_RAW(luong_old), 4353, new_key) INTO luong_new FROM dual;
        SELECT DBMS_CRYPTO.enCRYPT(UTL_RAW.CAST_TO_RAW(phucap_old), 4353, new_key) INTO phucap_new FROM dual;
        strsql := 'update atbm.nhanvien set luong='''||luong_new||''', phucap='''||phucap_new||''' where manv='''||v_manv||'''';
        EXECUTE IMMEDIATE (strsql);
    END LOOP;

END;
/
create or replace procedure update_key_admin (new_key in raw)
as
    strsql VARCHAR2(1000);
    luong_old VARCHAR2(255);
    phucap_old VARCHAR2(255);
    v_manv VARCHAR2(100);
    luong_new raw(2000);
    phucap_new raw(2000);
begin
    select manv, luong, phucap into v_manv, luong_old, phucap_old from atbm.Vw_NhanVien;
    
    strsql := 'update atbm.save_key set key='''||new_key||'''where manv='''||v_manv||'''';
    EXECUTE IMMEDIATE (strsql);

    
    SELECT DBMS_CRYPTO.enCRYPT(UTL_RAW.CAST_TO_RAW(luong_old), 4353, new_key) INTO luong_new FROM dual;
    SELECT DBMS_CRYPTO.enCRYPT(UTL_RAW.CAST_TO_RAW(phucap_old), 4353, new_key) INTO phucap_new FROM dual;
    strsql := 'update atbm.nhanvien set luong='''||luong_new||''', phucap='''||phucap_new||''' where manv='''||v_manv||'''';
    EXECUTE IMMEDIATE (strsql);
end;
/
create or replace view view_getkey
as
    select cast(key as varchar2(1000)) key from save_key where manv = SYS_CONTEXT('USERENV', 'SESSION_USER');
/
create or replace view view_getpw
as
    select password from nhanvien where manv = SYS_CONTEXT('USERENV', 'SESSION_USER');
/

-------------------------
-- Encryption when anyone update on luong or phucap
-----------------------
CREATE OR REPLACE TRIGGER TRG_UPDATE_LUONG_NHANVIEN
BEFORE UPDATE OF LUONG ON ATBM.NHANVIEN 
FOR EACH ROW 
DECLARE 
    v_key RAW(20);
BEGIN
            
        select key into v_key from ATBM.SAVE_KEY where UPPER(MaNV) = UPPER(:new.manv);
        :new.luong := encryption(UTL_RAW.CAST_TO_RAW(:new.luong), :new.manv);
    
END;
/

-----------------------
CREATE OR REPLACE TRIGGER TRG_UPDATE_PHUCAP_NHANVIEN
BEFORE UPDATE OF PHUCAP ON ATBM.NHANVIEN 
FOR EACH ROW 
DECLARE 
    v_key RAW(20);
BEGIN
        
        select key into v_key from ATBM.SAVE_KEY where UPPER(MaNV) = UPPER(:new.manv);
        DBMS_OUTPUT.PUT_LINE(v_key);
        :new.phucap := encryption(UTL_RAW.CAST_TO_RAW(:new.phucap), :new.manv);
        DBMS_OUTPUT.PUT_LINE(:new.phucap);

END;
/