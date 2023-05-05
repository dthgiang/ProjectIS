ALTER SESSION SET container = QLDTPDB;
/

CREATE OR REPLACE FUNCTION decryption (data IN RAW, manhnavien in varchar)
  RETURN VARCHAR2
AS
  result varchar2(1000);
  l_key raw(20);
BEGIN
  select key into l_key from save_key where manv=manhnavien;
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
    select key into l_key from save_key where manv=manhnavien;
    SELECT DBMS_CRYPTO.enCRYPT(data, 4353, l_key) INTO result FROM dual;
    RETURN result;
END;
 
/
CREATE OR REPLACE FUNCTION GET_KEY
RETURN raw
as
  l_key RAW(16);
BEGIN
  DBMS_RANDOM.initialize(ROUND(DBMS_UTILITY.get_time));
  l_key := UTL_RAW.cast_to_raw(DBMS_RANDOM.STRING('U', 16));
  return l_key;
END;
/
select GET_KEY from dual;
/
CREATE OR REPLACE TRIGGER TRG_INSERT_NHANVIEN
BEFORE INSERT ON NHANVIEN 
FOR EACH ROW 
DECLARE 
    v_key RAW(20);
    v_manv NHANVIEN.MANV%TYPE;
    v_tennv NHANVIEN.TENNV%TYPE;
    v_phai NHANVIEN.PHAI%TYPE;
    v_ngaysinh NHANVIEN.NGAYSINH%TYPE;
    v_diachi NHANVIEN.DIACHI%TYPE;
    v_sodt NHANVIEN.SODT%TYPE;
    v_luong NHANVIEN.LUONG%TYPE;
    v_phucap NHANVIEN.PHUCAP%TYPE;
    v_vaitro NHANVIEN.VAITRO%TYPE;
    v_manql NHANVIEN.MANQL%TYPE;
    v_phg NHANVIEN.PHG%TYPE;
    v_password NHANVIEN.password%TYPE;
    v_khuvuc NHANVIEN.KHUVUC%TYPE;
    v_linhvuc NHANVIEN.LINHVUC%TYPE;
BEGIN
    v_manv := :new.manv;
    v_tennv := :new.tennv;
    v_phai := :new.phai;
    v_ngaysinh := :new.ngaysinh;
    v_diachi := :new.diachi;
    v_sodt := :new.sodt;
    v_luong := :new.luong;
    v_phucap := :new.phucap;
    v_vaitro := :new.vaitro;
    v_manql := :new.manql;
    v_phg := :new.phg;
    v_password := :new.password;
    v_khuvuc := :new.khuvuc;
    v_linhvuc := :new.linhvuc;
    
    v_key := GET_KEY;
    INSERT INTO SAVE_KEY VALUES(v_manv, v_key);
    
    :new.luong := encryption(UTL_RAW.CAST_TO_RAW(v_luong), v_manv);
    :new.phucap := encryption(UTL_RAW.CAST_TO_RAW(v_phucap), v_manv);
    
    -- C?p nh?t b?ng NHANVIEN
    UPDATE NHANVIEN SET 
        TENNV = v_tennv,
        PHAI = v_phai,
        NGAYSINH = v_ngaysinh,
        DIACHI = v_diachi,
        SODT = v_sodt,
        LUONG = :new.luong,
        PHUCAP = :new.phucap,
        VAITRO = v_vaitro,
        MANQL = v_manql,
        PHG = v_phg,
        password = v_password,
        KHUVUC=v_khuvuc,
        LINHVUC=v_linhvuc
    WHERE MANV = v_manv;
END;
/
select * from nhanvien



