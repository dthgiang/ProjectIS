/*
Name:   Group 10
Class:  20HTTT01
*/

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

exec sp_XoaTable('NhanVien');
/

CREATE  TABLE NhanVien (
    MaNV 		varchar(10) primary key,
	TenNV 	    varchar2(60) not null,
	Phai 		varchar2(4),
	NgaySinh 	date,
	DiaChi 	    varchar2(100),
	SoDT 		varchar(10) not null unique,
	Luong 	    number,
	PhuCap 	    number,
	VaiTro 	    varchar2(50),
	MaNQL 	    varchar(10),
	PHG 		number
);
/

exec sp_XoaTable('TaiKhoan');
/

CREATE  TABLE TaiKhoan (
    Username    varchar(50) primary key,
    Password    varchar(150),
    MaNV        varchar(10)
);
/

exec sp_XoaTable('PhongBan');
/
-- Tao bang PhongBan
CREATE TABLE PhongBan (
	MaPB 		number primary key,
	TenPB 	    varchar2(60) not null,
	TrPHG 	    varchar(10)
);


/

exec sp_XoaTable('PhanCong');
/
-- Tao bang PhanCong
CREATE TABLE PhanCong (
	MaNV 		varchar(10),
	MaDA 		varchar(10),
	ThoiGian 	date,
	CONSTRAINT PK_PC PRIMARY KEY (MaNV, MaDA)
);
/

exec sp_XoaTable('DeAn');
/
-- Tao bang PhanCong
CREATE TABLE DeAn (
	MaDA 		varchar(10) primary key,
	TenDA 	    varchar2(60) not null,
	NgayBD 	    date,
	Phong 	    number,
    TruongDeAn  varchar(10)
	
);


-- Khoa ngoai


--MaNQL (NhanVien) --> MaNV (NhanVien)

ALTER TABLE NhanVien
ADD CONSTRAINT FK_NV_NV
  FOREIGN KEY (MaNQL)
  REFERENCES NhanVien(MaNV);
  
--PHG (NhanVien) --> MaPB(PhongBan)
ALTER TABLE NhanVien
ADD CONSTRAINT FK_NV_PB
  FOREIGN KEY (PHG)
  REFERENCES PhongBan(MaPB) on delete cascade;
  
--Phong (DeAn) --> MaPB(PhongBan)
ALTER TABLE DeAn
ADD CONSTRAINT FK_DA_PB
  FOREIGN KEY (Phong)
  REFERENCES PhongBan(MaPB) on delete cascade;
  
--MaNV (PhanCong) --> MaNV (NhanVien)
ALTER TABLE PhanCong
ADD CONSTRAINT FK_PC_NV
  FOREIGN KEY (MaNV)
  REFERENCES NhanVien(MaNV) on delete cascade
  
--MaNV (TaiKhoan) --> MaNV (NhanVien)
ALTER TABLE TaiKhoan
ADD CONSTRAINT FK_TK_NV
  FOREIGN KEY (MaNV)
  REFERENCES NhanVien(MaNV) on delete cascade;
 
 --MaNV (DeAn) --> MaNV (NhanVien)
ALTER TABLE DeAn
ADD CONSTRAINT FK_DA_NV
  FOREIGN KEY (TruongDeAn)
  REFERENCES NhanVien(MaNV) on delete cascade; 
  
--MaDA (PhanCong) --> MaDA (DeAn)
ALTER TABLE PhanCong
ADD CONSTRAINT FK_PC_DA
  FOREIGN KEY (MaDA)
  REFERENCES DeAn(MaDA) on delete cascade;



--Nhap du lieu cho tung bang
----- Nhap lieu cho bang PhongBan-----------
insert into PHONGBAN values(1, 'Phong 1', NULL);
insert into PHONGBAN values(2, 'Phong 2', NULL);
insert into PHONGBAN values(3, 'Phong 3', NULL);
insert into PHONGBAN values(4, 'Phong 4', NULL);
insert into PHONGBAN values(5, 'Phong 5', NULL);
insert into PHONGBAN values(6, 'Phong 6', NULL);
insert into PHONGBAN values(7, 'Phong 7', NULL);
insert into PHONGBAN values(8, 'Phong 8', NULL);

----- Nhap lieu cho bang NhanVien---------------
insert all
 into NHANVIEN values('GD001', 'Âu Song Th??ng', 'N?', TO_DATE('2022-1-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '09450001', 55555, 1942, 'Ban giám ??c', NULL, 2)
 into NHANVIEN values('GD002', 'D??ng Gia Tú', 'N?', TO_DATE('2008-10-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '09450002', 55555, 1337, 'Ban giám ??c', NULL, 3)
 into NHANVIEN values('GD003', '?oàn V?n V?', 'Nam', TO_DATE('2006-11-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '09450003', 55555, 1895, 'Ban giám ??c', NULL, 4)
 into NHANVIEN values('GD004', '?ng Gia Nam', 'Nam', TO_DATE('2006-10-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '09450004', 55555, 1709, 'Ban giám ??c', NULL, 5)
 into NHANVIEN values('GD005', 'H? Song Ng?c Nhi', 'N?', TO_DATE('2012-7-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '09450005', 55555, 1481, 'Ban giám ??c', NULL, 6)
 into NHANVIEN values('TC06', 'V? Th? Tín', 'Nam', TO_DATE('2019-1-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '09450006', 11000, 1984, 'Tài chính', NULL, 7)
 into NHANVIEN values('TC07', 'H? Hoàng ??ng', 'Nam', TO_DATE('2019-4-24','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '09450007', 11000, 1776, 'Tài chính', NULL, 8)
 into NHANVIEN values('TC08', 'Võ Tùng An', 'Nam', TO_DATE('2008-8-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '09450008', 11000, 1498, 'Tài chính', NULL, 1)
 into NHANVIEN values('TC09', 'Võ Song C?u', 'N?', TO_DATE('2017-5-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '09450009', 11000, 1885, 'Tài chính', NULL, 2)
 into NHANVIEN values('TC010', 'Âu Hoàng Chung', 'N?', TO_DATE('2006-4-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500010', 11000, 1210, 'Tài chính', NULL, 3)
 into NHANVIEN values('NS011', 'H? Th? ??ng', 'N?', TO_DATE('2001-7-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500011', 13000, 1596, 'Nhân s?', NULL, 4)
 into NHANVIEN values('NS012', 'Tr??ng V?n Ti?p', 'N?', TO_DATE('2014-6-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500012', 13000, 1922, 'Nhân s?', NULL, 5)
 into NHANVIEN values('NS013', 'Âu Tùng Anh', 'N?', TO_DATE('2015-5-13','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500013', 13000, 1818, 'Nhân s?', NULL, 6)
 into NHANVIEN values('NS014', 'Nguy?n Hoàng khanh', 'N?', TO_DATE('2004-1-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500014', 13000, 1620, 'Nhân s?', NULL, 7)
 into NHANVIEN values('NS015', 'An Th? Chung', 'Nam', TO_DATE('2001-1-17','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500015', 13000, 1465, 'Nhân s?', NULL, 8)
 into NHANVIEN values('QL016', 'Ph?m Hoàng ??ng', 'Nam', TO_DATE('2005-11-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500016', 25000, 1509, 'Qu?n lí', NULL, 1)
 into NHANVIEN values('QL017', 'Nguy?n Song C?u', 'N?', TO_DATE('2004-4-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500017', 25000, 1046, 'Qu?n lí', NULL, 2)
 into NHANVIEN values('QL018', 'Âu Chí Cúc', 'Nam', TO_DATE('2011-10-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500018', 25000, 1742, 'Qu?n lí', NULL, 3)
 into NHANVIEN values('QL019', 'D??ng Chí B?o', 'N?', TO_DATE('2020-8-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500019', 25000, 1832, 'Qu?n lí', NULL, 4)
 into NHANVIEN values('QL020', 'Bùi Chí Hân', 'N?', TO_DATE('2006-7-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500020', 25000, 1714, 'Qu?n lí', NULL, 5)
 into NHANVIEN values('QL021', '?oàn Gia Cúc', 'N?', TO_DATE('2008-12-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500021', 25000, 1942, 'Qu?n lí', NULL, 6)
 into NHANVIEN values('QL022', 'Nguy?n Gia Tú', 'Nam', TO_DATE('2010-4-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500022', 25000, 1560, 'Qu?n lí', NULL, 7)
 into NHANVIEN values('QL023', 'L?i Song C?u', 'N?', TO_DATE('2019-2-20','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500023', 25000, 1825, 'Qu?n lí', NULL, 8)
 into NHANVIEN values('QL024', '?ng Chí Sáng', 'N?', TO_DATE('2007-2-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500024', 25000, 1823, 'Qu?n lí', NULL, 1)
 into NHANVIEN values('QL025', '??ng Song Giang', 'N?', TO_DATE('2003-6-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500025', 25000, 1763, 'Qu?n lí', NULL, 2)
 into NHANVIEN values('QL026', 'Bùi Tùng Nguy?t', 'Nam', TO_DATE('2021-1-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500026', 25000, 1192, 'Qu?n lí', NULL, 3)
 into NHANVIEN values('QL027', 'An Chí Nam', 'Nam', TO_DATE('2015-8-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500027', 25000, 1428, 'Qu?n lí', NULL, 4)
 into NHANVIEN values('QL028', '?ng Th? Chung', 'N?', TO_DATE('2007-3-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500028', 25000, 1834, 'Qu?n lí', NULL, 5)
 into NHANVIEN values('QL029', 'Ph?m Hoàng Mây', 'Nam', TO_DATE('2022-5-25','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500029', 25000, 1352, 'Qu?n lí', NULL, 6)
 into NHANVIEN values('QL030', 'L?i Song B?o', 'Nam', TO_DATE('2006-8-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500030', 25000, 1742, 'Qu?n lí', NULL, 7)
 into NHANVIEN values('QL031', 'H? Chí Cúc', 'N?', TO_DATE('2000-9-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500031', 25000, 1957, 'Qu?n lí', NULL, 8)
 into NHANVIEN values('QL032', 'Âu V?n An', 'Nam', TO_DATE('2015-7-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500032', 25000, 1512, 'Qu?n lí', NULL, 1)
 into NHANVIEN values('QL033', 'An Th? Chung', 'N?', TO_DATE('2013-12-17','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500033', 25000, 1673, 'Qu?n lí', NULL, 2)
 into NHANVIEN values('QL034', 'Tr??ng Hoàng Ti?n', 'N?', TO_DATE('2022-3-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500034', 25000, 1514, 'Qu?n lí', NULL, 3)
 into NHANVIEN values('QL035', '?ng Tùng Sáng', 'Nam', TO_DATE('2018-9-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500035', 25000, 1670, 'Qu?n lí', NULL, 4)
 into NHANVIEN values('TDA036', 'Lê V?n C?u', 'N?', TO_DATE('2007-8-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500036', 20000, 1536, 'Tr??ng ?? án', NULL, 5)
 into NHANVIEN values('TDA037', '??ng Hoàng Thông', 'Nam', TO_DATE('2019-5-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500037', 20000, 1579, 'Tr??ng ?? án', NULL, 6)
 into NHANVIEN values('TDA038', 'Ph?m Gia Qu?c', 'Nam', TO_DATE('2021-4-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500038', 20000, 1125, 'Tr??ng ?? án', NULL, 7)
 into NHANVIEN values('TP039', '??ng Song An', 'Nam', TO_DATE('2012-3-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500039', 22000, 1464, 'Tr??ng phòng', NULL, 1)
 into NHANVIEN values('TP040', '?ng V?n Tân', 'N?', TO_DATE('2013-6-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500040', 22000, 1816, 'Tr??ng phòng', NULL, 2)
 into NHANVIEN values('TP041', 'An Th? Tú', 'N?', TO_DATE('2001-9-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500041', 22000, 1379, 'Tr??ng phòng', NULL, 3)
 into NHANVIEN values('TP042', 'Tr?n Gia C?u', 'N?', TO_DATE('2016-11-20','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500042', 22000, 1215, 'Tr??ng phòng', NULL, 4)
 into NHANVIEN values('TP043', 'Võ Gia Nguy?t', 'Nam', TO_DATE('2008-11-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500043', 22000, 1189, 'Tr??ng phòng', NULL, 5)
 into NHANVIEN values('TP044', 'L?i Hoàng Tú', 'Nam', TO_DATE('2010-4-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500044', 22000, 1939, 'Tr??ng phòng', NULL, 6)
 into NHANVIEN values('TP045', 'Lý Chí Nam', 'N?', TO_DATE('2000-2-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500045', 22000, 1947, 'Tr??ng phòng', NULL, 7)
 into NHANVIEN values('TP046', '??ng Chí Ng?c Nhi', 'N?', TO_DATE('2007-1-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500046', 22000, 1999, 'Tr??ng phòng', NULL, 8)
 into NHANVIEN values('NV47', 'Nguy?n Gia Tín', 'Nam', TO_DATE('2012-3-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500047', 6760, 1495, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV48', 'D??ng Song Anh', 'N?', TO_DATE('2016-11-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500048', 5311, 1517, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV49', 'Gi?n Chí Cúc', 'N?', TO_DATE('2015-7-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500049', 9829, 1008, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV50', 'Âu Chí ?an', 'N?', TO_DATE('2016-9-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500050', 1575, 1582, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV51', '??ng Tùng Minh', 'Nam', TO_DATE('2021-4-13','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500051', 6704, 1429, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV52', '?ng V?n B?c', 'Nam', TO_DATE('2020-4-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500052', 5381, 1597, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV53', 'V? Gia C?u', 'N?', TO_DATE('2013-1-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500053', 7512, 1010, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV54', 'D??ng Song Ng?c Nhi', 'Nam', TO_DATE('2020-7-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500054', 9910, 1326, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV55', 'Nguy?n Tùng Chi', 'N?', TO_DATE('2015-11-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500055', 6334, 1130, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV56', 'L?i Th? ??c', 'N?', TO_DATE('2020-6-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500056', 9152, 1434, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV57', 'Nguy?n Chí Nguy?t', 'N?', TO_DATE('2020-2-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500057', 6581, 1979, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV58', 'Lê Tùng Cúc', 'N?', TO_DATE('2018-8-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500058', 2648, 1871, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV59', 'Âu Hoàng ?an', 'N?', TO_DATE('2012-5-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500059', 4366, 1705, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV60', '?oàn Hoàng Minh', 'N?', TO_DATE('2007-6-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500060', 9639, 1654, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV61', 'Lê Th? Mây', 'N?', TO_DATE('2011-6-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500061', 7749, 1636, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV62', 'Nguy?n Gia An', 'N?', TO_DATE('2004-5-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500062', 2505, 1161, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV63', 'D??ng Song Chi', 'N?', TO_DATE('2016-6-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500063', 6315, 1160, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV64', 'V? V?n Th??ng', 'Nam', TO_DATE('2017-6-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500064', 6376, 1722, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV65', 'Gi?n Song Vi?t', 'Nam', TO_DATE('2016-10-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500065', 6325, 1246, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV66', 'Gi?n Tùng Duy', 'N?', TO_DATE('2018-6-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500066', 6299, 1405, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV67', 'Lê V?n Duy', 'N?', TO_DATE('2020-6-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500067', 8649, 1222, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV68', '?ng Chí Giang', 'N?', TO_DATE('2002-12-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500068', 8752, 1731, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV69', 'D??ng Tùng V?', 'Nam', TO_DATE('2002-3-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500069', 1325, 1241, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV70', 'Gi?n Tùng Ng?n', 'Nam', TO_DATE('2012-9-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500070', 2472, 1153, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV71', 'An V?n Hân', 'N?', TO_DATE('2012-6-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500071', 1654, 1421, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV72', 'Âu Hoàng B?o', 'Nam', TO_DATE('2009-6-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500072', 8285, 1564, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV73', 'Bùi V?n Nam', 'N?', TO_DATE('2007-5-23','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500073', 3317, 1910, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV74', 'Tr?n Tùng ?an', 'Nam', TO_DATE('2015-8-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500074', 2522, 1535, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV75', 'Bùi Song Sáng', 'N?', TO_DATE('2004-4-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500075', 9873, 1449, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV76', 'Lý Hoàng Phú', 'Nam', TO_DATE('2018-7-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500076', 1442, 1806, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV77', 'Nguy?n Hoàng Chung', 'N?', TO_DATE('2014-9-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500077', 2180, 1426, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV78', 'H? Song Nam', 'N?', TO_DATE('2012-9-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500078', 7482, 1409, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV79', '?ng Th? Tín', 'Nam', TO_DATE('2019-9-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500079', 3264, 1531, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV80', 'Ph?m V?n Thiên', 'Nam', TO_DATE('2022-9-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500080', 6301, 1870, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV81', 'Âu Song Cúc', 'N?', TO_DATE('2008-8-17','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500081', 3491, 1540, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV82', 'Tr??ng Song Giang', 'Nam', TO_DATE('2001-4-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500082', 6269, 1181, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV83', 'V? Th? Ng?c Nhi', 'N?', TO_DATE('2012-2-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500083', 4404, 1282, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV84', 'Bùi Th? Anh', 'N?', TO_DATE('2009-5-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500084', 5463, 1716, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV85', 'Lê Tùng ??c', 'Nam', TO_DATE('2005-8-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500085', 4058, 1767, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV86', 'Nguy?n Chí Phú', 'Nam', TO_DATE('2021-9-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500086', 4505, 1226, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV87', 'H? Th? Mây', 'N?', TO_DATE('2019-10-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500087', 3944, 1183, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV88', 'Lê Th? Tu?n', 'Nam', TO_DATE('2010-3-17','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500088', 9578, 1351, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV89', 'Tr?n V?n Sáng', 'Nam', TO_DATE('2022-2-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500089', 5621, 1424, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV90', 'Tr??ng V?n ?an', 'Nam', TO_DATE('2001-5-25','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500090', 6023, 1304, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV91', 'D??ng Th? Nguy?t', 'N?', TO_DATE('2019-11-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500091', 1210, 1931, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV92', 'Võ Hoàng Nam', 'Nam', TO_DATE('2001-7-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500092', 9947, 1999, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV93', '?ng Song Mây', 'N?', TO_DATE('2011-1-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500093', 8650, 1906, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV94', '??ng V?n Chi', 'Nam', TO_DATE('2006-6-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500094', 7987, 1839, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV95', 'L?i Hoàng khanh', 'N?', TO_DATE('2022-4-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500095', 3423, 1268, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV96', 'Lý Song Nguy?t', 'Nam', TO_DATE('2006-11-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500096', 4398, 1680, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV97', 'Võ Song Vy', 'Nam', TO_DATE('2008-10-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500097', 8804, 1004, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV98', 'V? Hoàng Ng?c Nhi', 'Nam', TO_DATE('2001-11-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500098', 6439, 1109, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV99', 'D??ng Th? Minh', 'Nam', TO_DATE('2014-9-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '094500099', 6348, 1301, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV100', 'Gi?n Th? ?an', 'N?', TO_DATE('2001-12-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000100', 5122, 1962, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV101', 'An Gia Mây', 'N?', TO_DATE('2013-9-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000101', 6413, 1109, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV102', 'Ph?m Chí Duy', 'Nam', TO_DATE('2018-10-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000102', 1327, 1408, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV103', '??ng Chí Th??ng', 'N?', TO_DATE('2021-2-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000103', 5862, 1511, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV104', '??ng V?n Ti?p', 'Nam', TO_DATE('2010-11-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000104', 1653, 1652, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV105', 'Lê Tùng V?', 'Nam', TO_DATE('2005-2-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000105', 3581, 1373, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV106', 'L?i Song Mây', 'N?', TO_DATE('2002-7-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000106', 7369, 1311, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV107', 'Gi?n Tùng Anh', 'N?', TO_DATE('2004-5-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000107', 7027, 1268, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV108', 'Lê Gia Vinh', 'N?', TO_DATE('2017-1-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000108', 5592, 1602, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV109', 'An Chí Anh', 'Nam', TO_DATE('2001-7-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000109', 7168, 1965, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV110', '?oàn Hoàng Chi', 'N?', TO_DATE('2009-5-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000110', 6160, 1251, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV111', 'Tr?n Song Vinh', 'N?', TO_DATE('2017-11-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000111', 3648, 1023, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV112', 'Gi?n Gia Tín', 'N?', TO_DATE('2012-2-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000112', 4486, 1464, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV113', 'Nguy?n Chí ?an', 'Nam', TO_DATE('2009-3-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000113', 5917, 1387, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV114', 'An V?n Giang', 'N?', TO_DATE('2008-9-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000114', 4456, 1312, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV115', 'Âu Chí Ti?p', 'Nam', TO_DATE('2022-8-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000115', 8847, 1423, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV116', 'Tr??ng Chí Ti?n', 'N?', TO_DATE('2014-8-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000116', 1316, 1735, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV117', 'D??ng Th? Anh', 'Nam', TO_DATE('2000-2-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000117', 9747, 1962, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV118', 'Âu Gia Cúc', 'Nam', TO_DATE('2013-9-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000118', 3494, 1330, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV119', 'Tr??ng Song Tú', 'N?', TO_DATE('2002-2-20','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000119', 8455, 1196, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV120', 'Âu V?n ??ng', 'Nam', TO_DATE('2016-1-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000120', 6910, 1953, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV121', '?oàn Chí Minh', 'Nam', TO_DATE('2014-1-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000121', 6891, 1914, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV122', 'Bùi Gia Cúc', 'N?', TO_DATE('2005-9-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000122', 8209, 1541, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV123', 'Âu Chí V?', 'N?', TO_DATE('2004-10-23','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000123', 6697, 1829, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV124', 'V? Th? B?o', 'Nam', TO_DATE('2013-11-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000124', 1797, 1613, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV125', 'D??ng Hoàng Phú', 'N?', TO_DATE('2014-2-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000125', 9501, 1334, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV126', 'Tr??ng Tùng B?o', 'N?', TO_DATE('2012-12-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000126', 6476, 1741, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV127', 'L?i Song Cúc', 'N?', TO_DATE('2001-1-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000127', 4555, 1253, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV128', '?ng Gia Hân', 'N?', TO_DATE('2014-4-20','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000128', 5533, 1804, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV129', '??ng Tùng Hân', 'N?', TO_DATE('2013-1-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000129', 2099, 1135, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV130', 'L?i Tùng Phú', 'Nam', TO_DATE('2012-4-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000130', 7363, 1835, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV131', 'Tr?n Gia ??ng', 'Nam', TO_DATE('2017-10-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000131', 2751, 1709, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV132', 'L?i Chí Tín', 'Nam', TO_DATE('2003-1-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000132', 2104, 1590, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV133', 'Tr??ng Hoàng V?', 'Nam', TO_DATE('2001-3-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000133', 5196, 1884, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV134', 'D??ng Tùng ?an', 'Nam', TO_DATE('2003-9-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000134', 8534, 1551, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV135', 'Lê Gia Mây', 'N?', TO_DATE('2022-2-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000135', 7609, 1810, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV136', 'Nguy?n Chí Chung', 'Nam', TO_DATE('2000-4-13','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000136', 9939, 1266, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV137', 'An Gia B?c', 'N?', TO_DATE('2006-2-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000137', 8684, 1785, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV138', 'Ph?m Tùng Chi', 'Nam', TO_DATE('2016-8-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000138', 5212, 1973, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV139', 'L?i Th? Chi', 'N?', TO_DATE('2013-9-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000139', 6048, 1128, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV140', 'Tr??ng Song Thiên', 'Nam', TO_DATE('2011-11-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000140', 6324, 1264, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV141', 'Tr??ng V?n Anh', 'Nam', TO_DATE('2001-3-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000141', 9418, 1242, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV142', 'Lê Chí Tú', 'Nam', TO_DATE('2010-5-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000142', 4185, 1297, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV143', 'L?i Song Nguy?t', 'N?', TO_DATE('2017-4-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000143', 7746, 1642, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV144', 'Lý Th? Mây', 'N?', TO_DATE('2001-11-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000144', 9597, 1939, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV145', 'Võ Song Tu?n', 'Nam', TO_DATE('2000-10-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000145', 2273, 1835, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV146', '?oàn Th? Th??ng', 'Nam', TO_DATE('2008-7-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000146', 6822, 1430, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV147', 'V? Chí Chi', 'Nam', TO_DATE('2018-6-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000147', 7138, 1682, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV148', 'Gi?n V?n Th??ng', 'Nam', TO_DATE('2009-5-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000148', 7532, 1735, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV149', 'V? V?n Thông', 'Nam', TO_DATE('2012-1-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000149', 5425, 1494, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV150', 'Võ Chí Vy', 'N?', TO_DATE('2003-1-17','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000150', 5521, 1514, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV151', 'L?i Gia Ti?n', 'N?', TO_DATE('2016-9-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000151', 2518, 1820, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV152', 'Âu Chí Sáng', 'Nam', TO_DATE('2004-9-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000152', 1112, 1806, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV153', 'Bùi Hoàng B?c', 'Nam', TO_DATE('2004-11-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000153', 9030, 1031, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV154', 'V? Hoàng Mây', 'N?', TO_DATE('2020-2-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000154', 5706, 1595, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV155', 'Bùi Th? Ti?p', 'Nam', TO_DATE('2009-6-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000155', 3560, 1423, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV156', 'L?i Chí Cúc', 'N?', TO_DATE('2000-2-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000156', 4541, 1857, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV157', 'D??ng Song Cúc', 'Nam', TO_DATE('2022-1-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000157', 3732, 1282, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV158', '?oàn Tùng Tín', 'N?', TO_DATE('2016-10-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000158', 7664, 1457, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV159', 'H? Hoàng Ng?n', 'Nam', TO_DATE('2005-4-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000159', 3572, 1269, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV160', 'Tr?n Gia Th??ng', 'Nam', TO_DATE('2017-10-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000160', 1296, 1464, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV161', 'V? Song ??ng', 'N?', TO_DATE('2003-5-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000161', 3767, 1445, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV162', 'V? V?n Hân', 'N?', TO_DATE('2022-10-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000162', 4250, 1416, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV163', 'An Chí Ti?p', 'Nam', TO_DATE('2009-9-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000163', 5717, 1384, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV164', '?ng Song B?o', 'N?', TO_DATE('2021-12-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000164', 6198, 1710, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV165', '??ng Hoàng Giang', 'N?', TO_DATE('2022-5-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000165', 9287, 1277, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV166', 'H? Gia Vi?t', 'N?', TO_DATE('2009-10-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000166', 7337, 1830, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV167', 'L?i Th? Tín', 'N?', TO_DATE('2019-1-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000167', 6340, 1399, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV168', 'Ph?m Song Tân', 'Nam', TO_DATE('2022-4-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000168', 7809, 1579, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV169', 'Lý Hoàng Cúc', 'Nam', TO_DATE('2013-11-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000169', 4836, 1339, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV170', 'H? Chí Tín', 'N?', TO_DATE('2006-3-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000170', 6039, 1437, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV171', 'An Gia Chung', 'N?', TO_DATE('2000-6-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000171', 7624, 1764, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV172', 'Lê V?n Duy', 'Nam', TO_DATE('2013-5-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000172', 1936, 1015, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV173', 'Gi?n Chí ??ng', 'N?', TO_DATE('2007-2-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000173', 2734, 1449, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV174', 'Tr??ng Chí Tín', 'N?', TO_DATE('2011-12-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000174', 1192, 1231, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV175', '??ng Gia Tín', 'N?', TO_DATE('2000-1-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000175', 3545, 1615, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV176', 'Nguy?n Gia B?o', 'Nam', TO_DATE('2003-7-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000176', 2287, 1532, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV177', '??ng V?n Minh', 'Nam', TO_DATE('2003-11-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000177', 6164, 1632, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV178', '??ng Song V?', 'Nam', TO_DATE('2004-7-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000178', 8762, 1100, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV179', '?ng Hoàng khanh', 'N?', TO_DATE('2016-12-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000179', 6121, 1711, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV180', 'Nguy?n Tùng Vinh', 'N?', TO_DATE('2022-8-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000180', 9961, 1276, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV181', 'An Hoàng Vinh', 'Nam', TO_DATE('2013-4-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000181', 6173, 1623, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV182', 'D??ng Tùng khanh', 'Nam', TO_DATE('2017-6-20','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000182', 2739, 1898, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV183', 'Lê Hoàng An', 'N?', TO_DATE('2006-4-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000183', 9542, 1641, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV184', 'An Gia ??c', 'Nam', TO_DATE('2008-2-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000184', 1307, 1873, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV185', '??ng Hoàng khanh', 'N?', TO_DATE('2014-4-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000185', 8177, 1076, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV186', 'Ph?m Hoàng Ti?n', 'Nam', TO_DATE('2008-2-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000186', 4519, 1582, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV187', 'An Gia Phú', 'N?', TO_DATE('2011-10-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000187', 8031, 1167, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV188', '?ng Hoàng khanh', 'N?', TO_DATE('2008-8-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000188', 2352, 1321, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV189', 'D??ng Gia Mây', 'Nam', TO_DATE('2009-7-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000189', 5130, 1387, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV190', 'Tr??ng Th? Chung', 'N?', TO_DATE('2015-10-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000190', 1777, 1930, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV191', 'Âu Tùng Anh', 'Nam', TO_DATE('2016-4-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000191', 4477, 1102, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV192', 'Tr??ng Tùng Tu?n', 'Nam', TO_DATE('2000-1-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000192', 1478, 1731, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV193', 'D??ng Tùng ??c', 'N?', TO_DATE('2020-6-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000193', 3065, 1884, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV194', 'Lê Chí Tú', 'N?', TO_DATE('2017-12-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000194', 3855, 1884, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV195', 'Võ Gia Thiên', 'Nam', TO_DATE('2006-7-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000195', 2387, 1286, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV196', 'Lý V?n Ti?n', 'N?', TO_DATE('2006-2-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000196', 4141, 1098, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV197', 'L?i Chí Nguy?t', 'N?', TO_DATE('2012-9-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000197', 9706, 1225, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV198', 'Lý Gia Vy', 'N?', TO_DATE('2016-10-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000198', 1058, 1637, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV199', '?ng Th? Mây', 'Nam', TO_DATE('2012-1-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000199', 4140, 1845, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV200', 'Âu V?n Tu?n', 'N?', TO_DATE('2018-10-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000200', 7220, 1009, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV201', 'Âu V?n Vi?t', 'N?', TO_DATE('2020-3-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000201', 6849, 1153, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV202', 'L?i Song Vinh', 'Nam', TO_DATE('2012-1-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000202', 6076, 1966, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV203', 'Nguy?n Tùng Tu?n', 'N?', TO_DATE('2012-4-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000203', 8248, 1230, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV204', 'Nguy?n Th? Anh', 'Nam', TO_DATE('2000-6-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000204', 1624, 1804, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV205', 'Âu Tùng Minh', 'N?', TO_DATE('2004-9-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000205', 5427, 1855, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV206', 'Gi?n V?n Phú', 'Nam', TO_DATE('2022-3-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000206', 6226, 1476, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV207', 'An Gia Ti?n', 'N?', TO_DATE('2011-11-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000207', 6340, 1825, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV208', '?oàn Chí Qu?c', 'N?', TO_DATE('2011-7-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000208', 9880, 1369, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV209', 'An Song B?o', 'Nam', TO_DATE('2010-2-24','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000209', 9298, 1855, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV210', 'Ph?m Hoàng Th??ng', 'N?', TO_DATE('2009-9-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000210', 9071, 1123, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV211', '?oàn Gia Chi', 'Nam', TO_DATE('2016-7-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000211', 3228, 1761, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV212', '??ng Song Ng?c Nhi', 'Nam', TO_DATE('2012-5-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000212', 6709, 1644, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV213', 'Gi?n V?n Tú', 'Nam', TO_DATE('2022-6-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000213', 2019, 1636, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV214', 'Tr?n Hoàng Nam', 'N?', TO_DATE('2020-12-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000214', 2824, 1105, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV215', 'H? V?n Phú', 'N?', TO_DATE('2019-1-24','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000215', 7348, 1568, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV216', 'V? V?n C?u', 'N?', TO_DATE('2014-11-25','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000216', 7105, 1241, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV217', '?ng Gia B?c', 'Nam', TO_DATE('2019-9-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000217', 3412, 1299, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV218', 'Lê Chí ?an', 'Nam', TO_DATE('2021-9-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000218', 3658, 1044, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV219', 'V? Tùng Nguy?t', 'Nam', TO_DATE('2015-12-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000219', 9858, 1723, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV220', 'Bùi V?n Duy', 'Nam', TO_DATE('2000-9-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000220', 9037, 1843, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV221', 'Lê Tùng Tân', 'N?', TO_DATE('2005-8-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000221', 2053, 1198, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV222', 'Tr?n Chí Qu?c', 'Nam', TO_DATE('2015-3-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000222', 8585, 1487, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV223', 'Tr??ng Tùng Ti?p', 'Nam', TO_DATE('2002-3-13','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000223', 8612, 1898, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV224', 'Tr?n Gia Minh', 'Nam', TO_DATE('2020-11-24','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000224', 2163, 1066, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV225', 'L?i Gia Tân', 'N?', TO_DATE('2019-5-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000225', 1032, 1092, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV226', 'L?i Th? B?o', 'N?', TO_DATE('2002-8-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000226', 2736, 1346, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV227', 'Âu Chí Thông', 'Nam', TO_DATE('2016-5-23','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000227', 3956, 1975, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV228', '?ng Song V?', 'Nam', TO_DATE('2012-11-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000228', 9959, 1615, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV229', 'Gi?n Th? B?o', 'N?', TO_DATE('2004-3-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000229', 7254, 1726, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV230', 'Tr?n Th? B?c', 'Nam', TO_DATE('2011-9-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000230', 3865, 1754, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV231', 'Nguy?n Gia An', 'Nam', TO_DATE('2002-6-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000231', 1488, 1866, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV232', 'Nguy?n Song Vi?t', 'Nam', TO_DATE('2011-5-13','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000232', 8284, 1352, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV233', 'Tr?n Song Ti?p', 'Nam', TO_DATE('2021-2-25','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000233', 1264, 1040, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV234', 'Tr??ng Song An', 'N?', TO_DATE('2021-1-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000234', 3735, 1308, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV235', 'Tr??ng Chí An', 'N?', TO_DATE('2010-11-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000235', 2491, 1669, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV236', 'Ph?m Song Thông', 'N?', TO_DATE('2020-6-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000236', 9001, 1472, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV237', '?ng Hoàng Tu?n', 'Nam', TO_DATE('2016-2-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000237', 8508, 1031, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV238', '??ng Chí Th??ng', 'N?', TO_DATE('2022-12-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000238', 9257, 1192, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV239', 'Âu Chí ??c', 'N?', TO_DATE('2005-6-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000239', 8067, 1039, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV240', 'Lý Th? B?o', 'N?', TO_DATE('2014-5-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000240', 8131, 1227, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV241', 'H? Chí Vinh', 'Nam', TO_DATE('2002-12-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000241', 7342, 1350, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV242', 'Nguy?n Chí Cúc', 'Nam', TO_DATE('2009-1-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000242', 6899, 1436, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV243', 'Nguy?n Hoàng Tín', 'Nam', TO_DATE('2009-3-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000243', 7628, 1685, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV244', 'H? Gia Tín', 'N?', TO_DATE('2010-12-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000244', 7878, 1867, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV245', 'Bùi Gia Duy', 'N?', TO_DATE('2017-11-24','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000245', 9507, 1267, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV246', 'Âu V?n Chi', 'N?', TO_DATE('2002-9-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000246', 7428, 1944, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV247', 'L?i Th? B?c', 'N?', TO_DATE('2016-4-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000247', 3249, 1816, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV248', '?ng Song Thiên', 'N?', TO_DATE('2019-1-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000248', 4730, 1415, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV249', 'Bùi Chí Chi', 'N?', TO_DATE('2007-5-25','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000249', 8511, 1750, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV250', '?ng Th? Th??ng', 'N?', TO_DATE('2020-12-17','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000250', 4258, 1161, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV251', 'Nguy?n Tùng Th??ng', 'N?', TO_DATE('2004-11-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000251', 1944, 1737, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV252', 'Nguy?n Hoàng Cúc', 'Nam', TO_DATE('2004-5-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000252', 7900, 1549, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV253', 'H? Th? Hân', 'Nam', TO_DATE('2003-4-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000253', 2794, 1439, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV254', '?oàn Gia Phú', 'N?', TO_DATE('2018-9-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000254', 8016, 1326, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV255', 'Ph?m Chí Th??ng', 'Nam', TO_DATE('2011-8-12','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000255', 8947, 1528, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV256', 'Lê Song Vinh', 'Nam', TO_DATE('2003-2-20','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000256', 8260, 1978, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV257', 'Tr?n Song Ti?n', 'N?', TO_DATE('2015-9-22','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000257', 1341, 1048, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV258', 'Lê V?n Chi', 'Nam', TO_DATE('2001-8-17','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000258', 5868, 1078, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV259', 'Nguy?n V?n B?o', 'N?', TO_DATE('2002-7-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000259', 2544, 1265, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV260', 'Gi?n V?n Chung', 'N?', TO_DATE('2006-6-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000260', 2117, 1990, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV261', 'V? V?n Tu?n', 'Nam', TO_DATE('2008-10-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000261', 5264, 1193, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV262', 'Gi?n Th? Th??ng', 'N?', TO_DATE('2020-9-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000262', 5321, 1524, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV263', 'Gi?n Gia ??ng', 'N?', TO_DATE('2020-9-17','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000263', 1308, 1661, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV264', 'Võ Hoàng Ti?p', 'Nam', TO_DATE('2021-11-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000264', 7231, 1451, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV265', 'An Chí Ng?n', 'N?', TO_DATE('2020-6-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000265', 8412, 1364, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV266', 'Âu Hoàng Mây', 'N?', TO_DATE('2012-7-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000266', 8441, 1235, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV267', 'V? Song Nam', 'Nam', TO_DATE('2015-8-24','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000267', 8472, 1528, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV268', 'Võ Gia Tú', 'N?', TO_DATE('2022-5-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000268', 7600, 1448, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV269', 'An Song V?', 'N?', TO_DATE('2018-12-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000269', 3034, 1016, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV270', '??ng Th? Tu?n', 'N?', TO_DATE('2004-2-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000270', 3499, 1838, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV271', 'Lý V?n Ng?n', 'Nam', TO_DATE('2014-6-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000271', 5113, 1766, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV272', 'Ph?m Gia Vi?t', 'N?', TO_DATE('2022-4-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000272', 4195, 1606, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV273', '?oàn Tùng ??c', 'Nam', TO_DATE('2016-1-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000273', 8766, 1664, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV274', 'D??ng Chí B?c', 'Nam', TO_DATE('2011-12-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000274', 4931, 1860, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV275', 'Âu Chí Minh', 'Nam', TO_DATE('2011-1-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000275', 5859, 1289, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV276', 'Âu V?n Ng?n', 'Nam', TO_DATE('2002-7-20','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000276', 9623, 1645, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV277', 'Võ Chí Ng?n', 'N?', TO_DATE('2019-11-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000277', 1823, 1350, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV278', 'Tr?n Hoàng Cúc', 'N?', TO_DATE('2001-11-24','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000278', 8710, 1658, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV279', 'D??ng Song V?', 'N?', TO_DATE('2007-8-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000279', 1353, 1318, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV280', 'Tr?n V?n Nam', 'Nam', TO_DATE('2010-8-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000280', 4879, 1939, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV281', 'Ph?m Chí Anh', 'N?', TO_DATE('2019-1-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000281', 5205, 1078, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV282', 'Lê Chí C?u', 'N?', TO_DATE('2012-1-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000282', 3704, 1232, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV283', 'Lê Gia Tín', 'N?', TO_DATE('2007-9-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000283', 5288, 1944, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV284', 'Tr??ng Chí Ng?n', 'N?', TO_DATE('2013-6-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000284', 3589, 1500, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV285', '??ng Song Tín', 'N?', TO_DATE('2019-12-23','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000285', 1632, 1885, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV286', 'V? Th? Mây', 'N?', TO_DATE('2015-12-23','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000286', 6201, 1753, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV287', '?oàn Th? Chung', 'Nam', TO_DATE('2020-1-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000287', 8651, 1800, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV288', 'Tr??ng Tùng Thông', 'N?', TO_DATE('2021-2-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000288', 8500, 1123, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV289', 'L?i Th? ??c', 'N?', TO_DATE('2022-2-14','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000289', 4057, 1548, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV290', 'V? V?n ??c', 'Nam', TO_DATE('2017-12-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000290', 7286, 1259, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV291', 'Tr?n Hoàng Ti?p', 'Nam', TO_DATE('2021-11-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000291', 2602, 1962, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV292', 'Võ Hoàng Chung', 'N?', TO_DATE('2013-9-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000292', 4345, 1861, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV293', 'Bùi Tùng B?c', 'Nam', TO_DATE('2003-7-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000293', 3104, 1430, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV294', 'Tr??ng Chí Sáng', 'Nam', TO_DATE('2010-3-24','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000294', 5471, 1173, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV295', '?oàn Chí Chi', 'N?', TO_DATE('2010-6-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000295', 3854, 1880, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV296', 'Tr?n Song Ti?p', 'N?', TO_DATE('2013-1-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000296', 4074, 1341, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV297', 'Âu Hoàng Tín', 'Nam', TO_DATE('2017-1-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000297', 3869, 1991, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV298', '??ng Tùng Tân', 'N?', TO_DATE('2015-7-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000298', 8763, 1298, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV299', 'Lý Tùng Tu?n', 'N?', TO_DATE('2020-12-24','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000299', 7401, 1652, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV300', 'L?i Song Chi', 'Nam', TO_DATE('2006-9-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000300', 2780, 1593, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV301', '?ng Tùng Duy', 'Nam', TO_DATE('2021-5-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000301', 6106, 1918, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV302', 'Lê Tùng Thiên', 'N?', TO_DATE('2011-12-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000302', 8892, 1210, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV303', 'V? Chí Qu?c', 'N?', TO_DATE('2004-9-1','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000303', 9027, 1482, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV304', 'Võ Gia ?an', 'Nam', TO_DATE('2004-6-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000304', 7314, 1636, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV305', 'Âu V?n Minh', 'Nam', TO_DATE('2016-1-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000305', 2391, 1100, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV306', 'Lý Tùng V?', 'N?', TO_DATE('2005-10-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000306', 8772, 1705, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV307', '?ng Tùng Thông', 'Nam', TO_DATE('2006-6-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000307', 8714, 1892, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV308', 'Lý Song Nguy?t', 'N?', TO_DATE('2022-10-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000308', 7706, 1946, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV309', 'Ph?m Tùng Tân', 'Nam', TO_DATE('2022-5-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000309', 6314, 1459, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV310', 'Võ Th? Tín', 'Nam', TO_DATE('2000-12-9','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000310', 2303, 1812, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV311', 'Âu Song ??c', 'Nam', TO_DATE('2003-10-18','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000311', 1043, 1933, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV312', '??ng Chí Thiên', 'Nam', TO_DATE('2018-9-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000312', 9589, 1718, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV313', 'Nguy?n Tùng Qu?c', 'N?', TO_DATE('2011-3-13','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000313', 9379, 1906, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV314', 'An Th? Hân', 'N?', TO_DATE('2001-3-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000314', 5042, 1636, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV315', '?ng Tùng C?u', 'Nam', TO_DATE('2014-3-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000315', 2557, 1336, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV316', 'Âu V?n Ng?c Nhi', 'Nam', TO_DATE('2008-4-23','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000316', 5090, 1053, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV317', 'L?i Song Vi?t', 'Nam', TO_DATE('2003-4-21','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000317', 5391, 1969, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV318', 'Bùi Chí Vinh', 'Nam', TO_DATE('2018-3-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000318', 4190, 1263, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV319', 'Lý Chí Ng?n', 'Nam', TO_DATE('2009-1-3','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000319', 3219, 1798, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV320', 'Võ Th? Tín', 'N?', TO_DATE('2009-9-13','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000320', 5010, 1386, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV321', 'Nguy?n Gia Cúc', 'Nam', TO_DATE('2013-10-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000321', 6285, 1901, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV322', '?ng Hoàng Tú', 'Nam', TO_DATE('2015-9-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000322', 1608, 1815, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV323', 'Bùi Th? Nam', 'Nam', TO_DATE('2014-4-4','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000323', 8282, 1542, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV324', 'Nguy?n Th? Thông', 'Nam', TO_DATE('2015-10-26','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000324', 2397, 1889, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV325', 'Lý Th? ??ng', 'N?', TO_DATE('2013-8-8','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000325', 2169, 1702, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV326', 'Âu Hoàng Minh', 'Nam', TO_DATE('2015-12-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000326', 9206, 1860, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV327', 'D??ng Th? Tân', 'N?', TO_DATE('2022-4-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000327', 6955, 1931, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV328', 'Âu Hoàng Sáng', 'N?', TO_DATE('2021-10-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000328', 6892, 1139, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV329', 'Bùi Chí B?c', 'N?', TO_DATE('2022-4-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000329', 5714, 1159, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV330', 'Âu Tùng B?o', 'N?', TO_DATE('2009-4-13','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000330', 2555, 1307, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV331', 'Bùi V?n ?an', 'Nam', TO_DATE('2003-2-2','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000331', 9440, 1743, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV332', 'Lý Tùng Phú', 'Nam', TO_DATE('2005-4-10','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000332', 2010, 1222, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV333', 'Tr?n Gia khanh', 'N?', TO_DATE('2014-5-6','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000333', 2712, 1054, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV334', 'Tr?n Hoàng ??c', 'Nam', TO_DATE('2009-5-17','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000334', 7877, 1568, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV335', '??ng Song Tu?n', 'N?', TO_DATE('2013-11-15','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000335', 2765, 1486, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV336', 'Gi?n Hoàng Mây', 'N?', TO_DATE('2004-2-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000336', 4712, 1609, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV337', 'Nguy?n Song An', 'N?', TO_DATE('2014-6-16','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000337', 2197, 1072, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV338', '?ng Th? Giang', 'Nam', TO_DATE('2012-5-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000338', 8103, 1819, 'Nhân viên', NULL, 3)
 into NHANVIEN values('NV339', 'V? Chí Nam', 'Nam', TO_DATE('2013-12-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000339', 3384, 1117, 'Nhân viên', NULL, 4)
 into NHANVIEN values('NV340', 'Lý V?n Hân', 'N?', TO_DATE('2022-1-28','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000340', 8434, 1062, 'Nhân viên', NULL, 5)
 into NHANVIEN values('NV341', 'Âu Hoàng ??ng', 'Nam', TO_DATE('2015-2-11','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000341', 3085, 1719, 'Nhân viên', NULL, 6)
 into NHANVIEN values('NV342', 'An Tùng Qu?c', 'Nam', TO_DATE('2004-8-7','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000342', 5676, 1757, 'Nhân viên', NULL, 7)
 into NHANVIEN values('NV343', 'V? Song Qu?c', 'N?', TO_DATE('2006-8-27','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000343', 9816, 1773, 'Nhân viên', NULL, 8)
 into NHANVIEN values('NV344', 'L?i Song Tín', 'N?', TO_DATE('2010-10-5','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000344', 3062, 1404, 'Nhân viên', NULL, 1)
 into NHANVIEN values('NV345', 'D??ng Song ?an', 'Nam', TO_DATE('2001-8-20','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000345', 1291, 1234, 'Nhân viên', NULL, 2)
 into NHANVIEN values('NV346', 'Bùi Gia Ti?p', 'N?', TO_DATE('2014-2-19','YYYY-MM-DD'), '227 Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP. H? Chí Minh', '0945000346', 2739, 1263, 'Nhân viên', NULL, 3)
select 1 from dual;
-----------------------------------------------------



-----------------------------------------------------



----- Nhap liEu cho bang DeAn ---------------
insert all
into DEAN values('DA101', 'De An so 1 Phong 1', TO_DATE('2022-9-12','YYYY-MM-DD'), 1)
into DEAN values('DA102', 'De An so 2 Phong 1', TO_DATE('2020-12-4','YYYY-MM-DD'), 1)
into DEAN values('DA201', 'De An so 1 Phong 2', TO_DATE('2022-12-13','YYYY-MM-DD'), 2)
into DEAN values('DA202', 'De An so 2 Phong 2', TO_DATE('2022-1-20','YYYY-MM-DD'), 2)
into DEAN values('DA203', 'De An so 3 Phong 2', TO_DATE('2021-5-22','YYYY-MM-DD'), 2)
into DEAN values('DA204', 'De An so 4 Phong 2', TO_DATE('2021-7-6','YYYY-MM-DD'), 2)
into DEAN values('DA301', 'De An so 1 Phong 3', TO_DATE('2020-8-17','YYYY-MM-DD'), 3)
into DEAN values('DA302', 'De An so 2 Phong 3', TO_DATE('2022-3-4','YYYY-MM-DD'), 3)
into DEAN values('DA303', 'De An so 3 Phong 3', TO_DATE('2022-11-9','YYYY-MM-DD'), 3)
into DEAN values('DA304', 'De An so 4 Phong 3', TO_DATE('2022-1-27','YYYY-MM-DD'), 3)
into DEAN values('DA401', 'De An so 1 Phong 4', TO_DATE('2022-7-5','YYYY-MM-DD'), 4)
into DEAN values('DA402', 'De An so 2 Phong 4', TO_DATE('2021-6-25','YYYY-MM-DD'), 4)
into DEAN values('DA501', 'De An so 1 Phong 5', TO_DATE('2022-1-28','YYYY-MM-DD'), 5)
into DEAN values('DA502', 'De An so 2 Phong 5', TO_DATE('2020-5-26','YYYY-MM-DD'), 5)
into DEAN values('DA503', 'De An so 3 Phong 5', TO_DATE('2020-7-11','YYYY-MM-DD'), 5)
into DEAN values('DA601', 'De An so 1 Phong 6', TO_DATE('2021-9-12','YYYY-MM-DD'), 6)
into DEAN values('DA602', 'De An so 2 Phong 6', TO_DATE('2021-1-6','YYYY-MM-DD'), 6)
into DEAN values('DA603', 'De An so 3 Phong 6', TO_DATE('2020-4-23','YYYY-MM-DD'), 6)
into DEAN values('DA604', 'De An so 4 Phong 6', TO_DATE('2022-8-24','YYYY-MM-DD'), 6)
into DEAN values('DA701', 'De An so 1 Phong 7', TO_DATE('2020-10-24','YYYY-MM-DD'), 7)
into DEAN values('DA702', 'De An so 2 Phong 7', TO_DATE('2020-1-5','YYYY-MM-DD'), 7)
into DEAN values('DA801', 'De An so 1 Phong 8', TO_DATE('2021-1-3','YYYY-MM-DD'), 8)
into DEAN values('DA802', 'De An so 2 Phong 8', TO_DATE('2021-7-5','YYYY-MM-DD'), 8)
into DEAN values('DA803', 'De An so 3 Phong 8', TO_DATE('2022-6-3','YYYY-MM-DD'), 8)

select 1 from dual;

----- Nhap liEu cho bang PhanCong ---------------

insert all
into PHANCONG values('NV47', 'DA801', TO_DATE('2021-5-12','YYYY-MM-DD'))
into PHANCONG values('NV50', 'DA301', TO_DATE('2020-4-5','YYYY-MM-DD'))
into PHANCONG values('NV50', 'DA302', TO_DATE('2022-12-13','YYYY-MM-DD'))
into PHANCONG values('NV53', 'DA601', TO_DATE('2022-9-7','YYYY-MM-DD'))
into PHANCONG values('NV56', 'DA101', TO_DATE('2022-8-28','YYYY-MM-DD'))
into PHANCONG values('NV59', 'DA401', TO_DATE('2022-9-13','YYYY-MM-DD'))
into PHANCONG values('NV62', 'DA701', TO_DATE('2020-11-27','YYYY-MM-DD'))
into PHANCONG values('NV65', 'DA201', TO_DATE('2021-6-8','YYYY-MM-DD'))
into PHANCONG values('NV65', 'DA202', TO_DATE('2021-11-11','YYYY-MM-DD'))
into PHANCONG values('NV68', 'DA501', TO_DATE('2021-7-27','YYYY-MM-DD'))
into PHANCONG values('NV68', 'DA502', TO_DATE('2022-6-8','YYYY-MM-DD'))
into PHANCONG values('NV71', 'DA801', TO_DATE('2020-5-19','YYYY-MM-DD'))
into PHANCONG values('NV71', 'DA802', TO_DATE('2020-1-12','YYYY-MM-DD'))
into PHANCONG values('NV74', 'DA301', TO_DATE('2022-6-2','YYYY-MM-DD'))
into PHANCONG values('NV74', 'DA302', TO_DATE('2022-3-21','YYYY-MM-DD'))
into PHANCONG values('NV77', 'DA601', TO_DATE('2020-1-8','YYYY-MM-DD'))
into PHANCONG values('NV77', 'DA602', TO_DATE('2022-9-5','YYYY-MM-DD'))
into PHANCONG values('NV80', 'DA101', TO_DATE('2021-5-18','YYYY-MM-DD'))
into PHANCONG values('NV83', 'DA401', TO_DATE('2021-1-22','YYYY-MM-DD'))
into PHANCONG values('NV86', 'DA701', TO_DATE('2020-11-5','YYYY-MM-DD'))
into PHANCONG values('NV89', 'DA201', TO_DATE('2021-1-23','YYYY-MM-DD'))
into PHANCONG values('NV92', 'DA501', TO_DATE('2020-8-8','YYYY-MM-DD'))
into PHANCONG values('NV92', 'DA502', TO_DATE('2020-4-20','YYYY-MM-DD'))
into PHANCONG values('NV95', 'DA801', TO_DATE('2022-2-8','YYYY-MM-DD'))
into PHANCONG values('NV95', 'DA802', TO_DATE('2020-10-26','YYYY-MM-DD'))
into PHANCONG values('NV98', 'DA301', TO_DATE('2020-8-10','YYYY-MM-DD'))
into PHANCONG values('NV101', 'DA601', TO_DATE('2022-5-22','YYYY-MM-DD'))
into PHANCONG values('NV104', 'DA101', TO_DATE('2021-12-5','YYYY-MM-DD'))
into PHANCONG values('NV104', 'DA102', TO_DATE('2020-2-20','YYYY-MM-DD'))
into PHANCONG values('NV107', 'DA401', TO_DATE('2021-11-24','YYYY-MM-DD'))
into PHANCONG values('NV110', 'DA701', TO_DATE('2021-10-22','YYYY-MM-DD'))
into PHANCONG values('NV110', 'DA702', TO_DATE('2020-1-14','YYYY-MM-DD'))
into PHANCONG values('NV113', 'DA201', TO_DATE('2020-8-14','YYYY-MM-DD'))
into PHANCONG values('NV116', 'DA501', TO_DATE('2022-9-20','YYYY-MM-DD'))
into PHANCONG values('NV119', 'DA801', TO_DATE('2021-1-26','YYYY-MM-DD'))
into PHANCONG values('NV119', 'DA802', TO_DATE('2021-7-15','YYYY-MM-DD'))
into PHANCONG values('NV122', 'DA301', TO_DATE('2021-3-2','YYYY-MM-DD'))
into PHANCONG values('NV122', 'DA302', TO_DATE('2021-2-16','YYYY-MM-DD'))
into PHANCONG values('NV125', 'DA601', TO_DATE('2021-7-19','YYYY-MM-DD'))
into PHANCONG values('NV128', 'DA101', TO_DATE('2021-10-9','YYYY-MM-DD'))
into PHANCONG values('NV128', 'DA102', TO_DATE('2020-9-24','YYYY-MM-DD'))
into PHANCONG values('NV131', 'DA401', TO_DATE('2022-12-3','YYYY-MM-DD'))
into PHANCONG values('NV134', 'DA701', TO_DATE('2020-5-15','YYYY-MM-DD'))
into PHANCONG values('NV137', 'DA201', TO_DATE('2020-11-3','YYYY-MM-DD'))
into PHANCONG values('NV137', 'DA202', TO_DATE('2022-8-7','YYYY-MM-DD'))
into PHANCONG values('NV140', 'DA501', TO_DATE('2020-9-18','YYYY-MM-DD'))
into PHANCONG values('NV140', 'DA502', TO_DATE('2021-8-3','YYYY-MM-DD'))
into PHANCONG values('NV143', 'DA801', TO_DATE('2020-5-21','YYYY-MM-DD'))
into PHANCONG values('NV143', 'DA802', TO_DATE('2021-10-12','YYYY-MM-DD'))
into PHANCONG values('NV146', 'DA301', TO_DATE('2022-11-21','YYYY-MM-DD'))
into PHANCONG values('NV149', 'DA601', TO_DATE('2020-2-8','YYYY-MM-DD'))
into PHANCONG values('NV149', 'DA602', TO_DATE('2022-5-22','YYYY-MM-DD'))
into PHANCONG values('NV152', 'DA101', TO_DATE('2022-6-20','YYYY-MM-DD'))
into PHANCONG values('NV155', 'DA401', TO_DATE('2020-9-23','YYYY-MM-DD'))
into PHANCONG values('NV155', 'DA402', TO_DATE('2022-4-13','YYYY-MM-DD'))
into PHANCONG values('NV158', 'DA701', TO_DATE('2020-4-16','YYYY-MM-DD'))
into PHANCONG values('NV158', 'DA702', TO_DATE('2021-11-8','YYYY-MM-DD'))
into PHANCONG values('NV161', 'DA201', TO_DATE('2020-4-6','YYYY-MM-DD'))
into PHANCONG values('NV161', 'DA202', TO_DATE('2021-2-16','YYYY-MM-DD'))
into PHANCONG values('NV164', 'DA501', TO_DATE('2022-1-9','YYYY-MM-DD'))
into PHANCONG values('NV167', 'DA801', TO_DATE('2021-2-20','YYYY-MM-DD'))
into PHANCONG values('NV167', 'DA802', TO_DATE('2022-12-16','YYYY-MM-DD'))
into PHANCONG values('NV170', 'DA301', TO_DATE('2021-1-22','YYYY-MM-DD'))
into PHANCONG values('NV170', 'DA302', TO_DATE('2022-4-27','YYYY-MM-DD'))
into PHANCONG values('NV173', 'DA601', TO_DATE('2020-8-27','YYYY-MM-DD'))
into PHANCONG values('NV176', 'DA101', TO_DATE('2020-2-12','YYYY-MM-DD'))
into PHANCONG values('NV176', 'DA102', TO_DATE('2022-7-12','YYYY-MM-DD'))
into PHANCONG values('NV179', 'DA401', TO_DATE('2020-3-11','YYYY-MM-DD'))
into PHANCONG values('NV182', 'DA701', TO_DATE('2022-4-21','YYYY-MM-DD'))
into PHANCONG values('NV185', 'DA201', TO_DATE('2021-10-25','YYYY-MM-DD'))
into PHANCONG values('NV185', 'DA202', TO_DATE('2022-5-12','YYYY-MM-DD'))
into PHANCONG values('NV188', 'DA501', TO_DATE('2022-6-22','YYYY-MM-DD'))
into PHANCONG values('NV188', 'DA502', TO_DATE('2020-1-21','YYYY-MM-DD'))
into PHANCONG values('NV191', 'DA801', TO_DATE('2020-1-6','YYYY-MM-DD'))
into PHANCONG values('NV191', 'DA802', TO_DATE('2022-7-24','YYYY-MM-DD'))
into PHANCONG values('NV194', 'DA301', TO_DATE('2020-3-23','YYYY-MM-DD'))
into PHANCONG values('NV197', 'DA601', TO_DATE('2020-9-5','YYYY-MM-DD'))
into PHANCONG values('NV197', 'DA602', TO_DATE('2020-12-6','YYYY-MM-DD'))
into PHANCONG values('NV200', 'DA101', TO_DATE('2022-9-21','YYYY-MM-DD'))
into PHANCONG values('NV200', 'DA102', TO_DATE('2020-9-17','YYYY-MM-DD'))
into PHANCONG values('NV203', 'DA401', TO_DATE('2022-8-26','YYYY-MM-DD'))
into PHANCONG values('NV203', 'DA402', TO_DATE('2020-3-5','YYYY-MM-DD'))
into PHANCONG values('NV206', 'DA701', TO_DATE('2020-12-26','YYYY-MM-DD'))
into PHANCONG values('NV209', 'DA201', TO_DATE('2020-9-10','YYYY-MM-DD'))
into PHANCONG values('NV212', 'DA501', TO_DATE('2022-1-1','YYYY-MM-DD'))
into PHANCONG values('NV215', 'DA801', TO_DATE('2020-7-9','YYYY-MM-DD'))
into PHANCONG values('NV215', 'DA802', TO_DATE('2022-8-13','YYYY-MM-DD'))
into PHANCONG values('NV218', 'DA301', TO_DATE('2020-12-4','YYYY-MM-DD'))
into PHANCONG values('NV218', 'DA302', TO_DATE('2022-5-27','YYYY-MM-DD'))
into PHANCONG values('NV221', 'DA601', TO_DATE('2021-7-13','YYYY-MM-DD'))
into PHANCONG values('NV224', 'DA101', TO_DATE('2022-2-17','YYYY-MM-DD'))
into PHANCONG values('NV224', 'DA102', TO_DATE('2020-3-5','YYYY-MM-DD'))
into PHANCONG values('NV227', 'DA401', TO_DATE('2021-1-10','YYYY-MM-DD'))
into PHANCONG values('NV230', 'DA701', TO_DATE('2021-10-10','YYYY-MM-DD'))
into PHANCONG values('NV233', 'DA201', TO_DATE('2020-2-28','YYYY-MM-DD'))
into PHANCONG values('NV233', 'DA202', TO_DATE('2021-11-11','YYYY-MM-DD'))
into PHANCONG values('NV236', 'DA501', TO_DATE('2021-9-10','YYYY-MM-DD'))
into PHANCONG values('NV239', 'DA801', TO_DATE('2021-12-26','YYYY-MM-DD'))
into PHANCONG values('NV239', 'DA802', TO_DATE('2021-8-18','YYYY-MM-DD'))
into PHANCONG values('NV242', 'DA301', TO_DATE('2020-2-18','YYYY-MM-DD'))
into PHANCONG values('NV242', 'DA302', TO_DATE('2020-5-8','YYYY-MM-DD'))
into PHANCONG values('NV245', 'DA601', TO_DATE('2022-6-10','YYYY-MM-DD'))
into PHANCONG values('NV248', 'DA101', TO_DATE('2021-4-24','YYYY-MM-DD'))
into PHANCONG values('NV248', 'DA102', TO_DATE('2021-12-8','YYYY-MM-DD'))
into PHANCONG values('NV251', 'DA401', TO_DATE('2022-6-28','YYYY-MM-DD'))
into PHANCONG values('NV254', 'DA701', TO_DATE('2021-6-26','YYYY-MM-DD'))
into PHANCONG values('NV254', 'DA702', TO_DATE('2020-1-22','YYYY-MM-DD'))
into PHANCONG values('NV257', 'DA201', TO_DATE('2020-6-15','YYYY-MM-DD'))
into PHANCONG values('NV257', 'DA202', TO_DATE('2020-5-26','YYYY-MM-DD'))
into PHANCONG values('NV260', 'DA501', TO_DATE('2020-7-19','YYYY-MM-DD'))
into PHANCONG values('NV263', 'DA801', TO_DATE('2022-5-13','YYYY-MM-DD'))
into PHANCONG values('NV266', 'DA301', TO_DATE('2021-1-15','YYYY-MM-DD'))
into PHANCONG values('NV266', 'DA302', TO_DATE('2022-10-19','YYYY-MM-DD'))
into PHANCONG values('NV269', 'DA601', TO_DATE('2021-6-2','YYYY-MM-DD'))
into PHANCONG values('NV269', 'DA602', TO_DATE('2021-2-28','YYYY-MM-DD'))
into PHANCONG values('NV272', 'DA101', TO_DATE('2021-12-10','YYYY-MM-DD'))
into PHANCONG values('NV275', 'DA401', TO_DATE('2020-10-19','YYYY-MM-DD'))
into PHANCONG values('NV275', 'DA402', TO_DATE('2021-2-4','YYYY-MM-DD'))
into PHANCONG values('NV278', 'DA701', TO_DATE('2022-12-3','YYYY-MM-DD'))
into PHANCONG values('NV281', 'DA201', TO_DATE('2022-7-11','YYYY-MM-DD'))
into PHANCONG values('NV284', 'DA501', TO_DATE('2022-6-25','YYYY-MM-DD'))
into PHANCONG values('NV287', 'DA801', TO_DATE('2021-11-25','YYYY-MM-DD'))
into PHANCONG values('NV287', 'DA802', TO_DATE('2022-11-28','YYYY-MM-DD'))
into PHANCONG values('NV290', 'DA301', TO_DATE('2022-11-14','YYYY-MM-DD'))
into PHANCONG values('NV290', 'DA302', TO_DATE('2020-11-17','YYYY-MM-DD'))
into PHANCONG values('NV293', 'DA601', TO_DATE('2022-8-26','YYYY-MM-DD'))
into PHANCONG values('NV296', 'DA101', TO_DATE('2020-2-3','YYYY-MM-DD'))
into PHANCONG values('NV299', 'DA401', TO_DATE('2022-3-28','YYYY-MM-DD'))
into PHANCONG values('NV302', 'DA701', TO_DATE('2021-7-1','YYYY-MM-DD'))
into PHANCONG values('NV302', 'DA702', TO_DATE('2022-6-23','YYYY-MM-DD'))
into PHANCONG values('NV305', 'DA201', TO_DATE('2020-4-26','YYYY-MM-DD'))
into PHANCONG values('NV308', 'DA501', TO_DATE('2022-12-25','YYYY-MM-DD'))
into PHANCONG values('NV311', 'DA801', TO_DATE('2020-4-26','YYYY-MM-DD'))
into PHANCONG values('NV314', 'DA301', TO_DATE('2022-12-13','YYYY-MM-DD'))
into PHANCONG values('NV317', 'DA601', TO_DATE('2020-2-8','YYYY-MM-DD'))
into PHANCONG values('NV320', 'DA101', TO_DATE('2021-4-14','YYYY-MM-DD'))
into PHANCONG values('NV320', 'DA102', TO_DATE('2021-3-25','YYYY-MM-DD'))
into PHANCONG values('NV323', 'DA401', TO_DATE('2020-5-11','YYYY-MM-DD'))
into PHANCONG values('NV326', 'DA701', TO_DATE('2020-6-9','YYYY-MM-DD'))
into PHANCONG values('NV329', 'DA201', TO_DATE('2021-9-20','YYYY-MM-DD'))
into PHANCONG values('NV332', 'DA501', TO_DATE('2021-12-20','YYYY-MM-DD'))
into PHANCONG values('NV332', 'DA502', TO_DATE('2022-8-20','YYYY-MM-DD'))
into PHANCONG values('NV335', 'DA801', TO_DATE('2022-7-4','YYYY-MM-DD'))
into PHANCONG values('NV338', 'DA301', TO_DATE('2020-4-15','YYYY-MM-DD'))
into PHANCONG values('NV341', 'DA601', TO_DATE('2022-10-26','YYYY-MM-DD'))
into PHANCONG values('NV341', 'DA602', TO_DATE('2020-9-12','YYYY-MM-DD'))
into PHANCONG values('NV344', 'DA101', TO_DATE('2022-10-27','YYYY-MM-DD'))
into PHANCONG values('NV344', 'DA102', TO_DATE('2022-9-24','YYYY-MM-DD'))

select 1 from dual;


-- update PhongBan
 UPDATE PHONGBAN set TrPHG = 'TP039' WHERE MaPB = 1;
 UPDATE PHONGBAN set TrPHG = 'TP040' WHERE MaPB = 2;
 UPDATE PHONGBAN set TrPHG = 'TP041' WHERE MaPB = 3;
 UPDATE PHONGBAN set TrPHG = 'TP042' WHERE MaPB = 4;
 UPDATE PHONGBAN set TrPHG = 'TP043' WHERE MaPB = 5;
 UPDATE PHONGBAN set TrPHG = 'TP044' WHERE MaPB = 6;
 UPDATE PHONGBAN set TrPHG = 'TP045' WHERE MaPB = 7;
 UPDATE PHONGBAN set TrPHG = 'TP046' WHERE MaPB = 8;
--------------------END nhap lieu ---------------

/*

select * from PhanCong
select * from NhanVien
select * from PhongBan
select * from DeAn
*/