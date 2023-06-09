/*
Name:   Group 10
Class:  20HTTT01
*/
ALTER SESSION SET container = QLDTPDB;
CREATE OR REPLACE PROCEDURE sp_XoaTable (p_TenTable IN VARCHAR2)
AS
checks int;
BEGIN
    SELECT count(*) into checks 
    FROM USER_TABLES WHERE TABLE_NAME = UPPER(p_TenTable);
    
    if checks > 0 then
      EXECUTE IMMEDIATE 'DROP TABLE ' || p_TenTable;
       dbms_output.put_line( 'Table droppped' );
    else 
        dbms_output.put_line( 'Table does not exist' );
    end if;
END;
/
exec sp_XoaTable('save_key');
/
exec sp_XoaTable('PhanCong');
/
exec sp_XoaTable('DeAn');
/
exec sp_XoaTable('NhanVien');
/
exec sp_XoaTable('PhongBan');
/
create table save_key(
    MaNV 		varchar(10) primary key,
    key raw(255)
); 
/
CREATE  TABLE NhanVien (
    MaNV 		varchar(10) primary key,
	TenNV 	    varchar2(60) ,
	Phai 		varchar2(4),
	NgaySinh 	date,
	DiaChi 	    varchar2(100),
	SoDT 		varchar(10)  unique,
	Luong 	    raw(255),
	PhuCap 	    raw(255),
	VaiTro 	    varchar2(50),
	MaNQL 	    varchar(10),
	PHG 		number,
    password    varchar2(150),
    KhuVuc      varchar2(30),
    LinhVuc     varchar2(50)
);
/


-- Tao bang PhongBan
CREATE TABLE PhongBan (
	MaPB 		number primary key,
	TenPB 	    varchar2(60),
	TrPHG 	    varchar(10)
);

/


-- Tao bang PhanCong
CREATE TABLE PhanCong (
	MaNV 		varchar(10),
	MaDA 		varchar(10),
	ThoiGian 	date,
	CONSTRAINT PK_PC PRIMARY KEY (MaNV, MaDA)
);
/


-- Tao bang PhanCong
CREATE TABLE DeAn (
	MaDA 		varchar(10) primary key,
	TenDA 	    varchar2(60) ,
	NgayBD 	    date,
	Phong 	    number,
    TruongDeAn  varchar(10)
	
);

-- Khoa ngoai


--MaNQL (NhanVien) --> MaNV (NhanVien)

ALTER TABLE NhanVien
ADD CONSTRAINT FK_NV_NV
  FOREIGN KEY (MaNQL)
  REFERENCES NhanVien(MaNV) on delete CASCADE;
  
--PHG (NhanVien) --> MaPB(PhongBan)
ALTER TABLE NhanVien
ADD CONSTRAINT FK_NV_PB
  FOREIGN KEY (PHG)
  REFERENCES PhongBan(MaPB)  on delete CASCADE;
  
--Phong (DeAn) --> MaPB(PhongBan)
ALTER TABLE DeAn
ADD CONSTRAINT FK_DA_PB
  FOREIGN KEY (Phong)
  REFERENCES PhongBan(MaPB)  on delete CASCADE;

--TruongDeAn (DeAn) --> MaNV(NhanVien)
ALTER TABLE DeAn
ADD CONSTRAINT FK_DA_NV
  FOREIGN KEY (TruongDeAn)
  REFERENCES NhanVien(MaNV)  on delete CASCADE;

--MaNV (PhanCong) --> MaNV (NhanVien)
ALTER TABLE PhanCong
ADD CONSTRAINT FK_PC_NV
  FOREIGN KEY (MaNV)
  REFERENCES NhanVien(MaNV)  on delete CASCADE;

 
--MaDA (PhanCong) --> MaDA (DeAn)
ALTER TABLE PhanCong
ADD CONSTRAINT FK_PC_DA
  FOREIGN KEY (MaDA)
  REFERENCES DeAn(MaDA)  on delete CASCADE;


