
-- Delete all data before insert;
delete from PHANCONG;
delete from PHONGBAN;
delete from DEAN;
delete from NHANVIEN;

-- TABLE 2
-- Nhap lieu cho bang ATBM.PHONGBAN ---
----------------------------------
insert all
into ATBM.PHONGBAN values(1, 'Phong 1', NULL)
into ATBM.PHONGBAN values(2, 'Phong 2', NULL)
into ATBM.PHONGBAN values(3, 'Phong 3', NULL)
into ATBM.PHONGBAN values(4, 'Phong 4', NULL)
into ATBM.PHONGBAN values(5, 'Phong 5', NULL)
into ATBM.PHONGBAN values(6, 'Phong 6', NULL)
into ATBM.PHONGBAN values(7, 'Phong 7', NULL)
into ATBM.PHONGBAN values(8, 'Phong 8', NULL)
select 1 from dual;

--------------- END --------------


-- TABLE 3
-- Nhap lieu cho bang ATBM.NHANVIEN ---
----------------------------------

insert into NHANVIEN values('GD001', 'An Song Anh', 'Nu', TO_DATE('2005-11-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '09450001', '22000', '10000', 'Ban giam doc', NULL, 2, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('GD002', 'Ðang Thi Tin', 'Nam', TO_DATE('2011-2-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '09450002', '22000', '10000', 'Ban giam doc', NULL, 3, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('GD003', 'Pham Chi Han', 'Nu', TO_DATE('2008-12-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '09450003', '22000', '10000', 'Ban giam doc', NULL, 4, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('GD004', 'Duong Thi Ðuc', 'Nu', TO_DATE('2008-3-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '09450004', '22000', '10000', 'Ban giam doc', NULL, 5, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('GD005', 'Ðoan Chi Chi', 'Nu', TO_DATE('2005-10-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '09450005', '22000', '10000', 'Ban giam doc', NULL, 6, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('TC06', 'Ðoan Song Sang', 'Nam', TO_DATE('2021-3-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '09450006', '22000', '10000', 'Tai chinh', NULL, 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('TC07', 'Pham Van Thuong', 'Nam', TO_DATE('2003-9-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '09450007', '22000', '10000', 'Tai chinh', NULL, 8, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('TC08', 'Au Thi An', 'Nu', TO_DATE('2020-5-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '09450008', '22000', '10000', 'Tai chinh', NULL, 1, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('TC09', 'Ho Song Han', 'Nu', TO_DATE('2015-10-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '09450009', '22000', '10000', 'Tai chinh', NULL, 2, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('TC010', 'Vu Song May', 'Nam', TO_DATE('2001-9-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500010', '22000', '10000', 'Tai chinh', NULL, 3, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NS011', 'Nguyen Hoang Tu', 'Nam', TO_DATE('2013-2-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500011', '22000', '10000', 'Nhan su', NULL, 4, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NS012', 'Pham Song Tu', 'Nam', TO_DATE('2006-9-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500012', '22000', '10000', 'Nhan su', NULL, 5, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NS013', 'Le Thi Tuan', 'Nam', TO_DATE('2017-8-6','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500013', '22000', '10000', 'Nhan su', NULL, 6, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NS014', 'Vo Tung Viet', 'Nu', TO_DATE('2009-2-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500014', '22000', '10000', 'Nhan su', NULL, 7, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NS015', 'Ho Tung Vu', 'Nam', TO_DATE('2019-11-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500015', '22000', '10000', 'Nhan su', NULL, 8, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('QL016', 'Ðoan Tung Vy', 'Nam', TO_DATE('2000-1-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500016', '22000', '10000', 'Quan li', NULL, 1, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('QL017', 'Vu Van Tu', 'Nam', TO_DATE('2008-6-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500017', '22000', '10000', 'Quan li', NULL, 2, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('QL018', 'Ly Hoang Ðang', 'Nu', TO_DATE('2007-4-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500018', '22000', '10000', 'Quan li', NULL, 3, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('QL019', 'Duong Tung Han', 'Nu', TO_DATE('2007-10-17','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500019', '22000', '10000', 'Quan li', NULL, 4, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('QL020', 'Au Chi Vu', 'Nam', TO_DATE('2004-10-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500020', '22000', '10000', 'Quan li', NULL, 5, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('QL021', 'An Thi Tu', 'Nu', TO_DATE('2022-9-26','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500021', '22000', '10000', 'Quan li', NULL, 6, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('QL022', 'Bui Hoang Anh', 'Nu', TO_DATE('2010-4-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500022', '22000', '10000', 'Quan li', NULL, 7, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('QL023', 'Bui Van Tiep', 'Nam', TO_DATE('2016-3-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500023', '22000', '10000', 'Quan li', NULL, 8, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('QL024', 'Vo Song Quoc', 'Nam', TO_DATE('2010-10-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500024', '22000', '10000', 'Quan li', NULL, 1, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('QL025', 'Au Chi khanh', 'Nu', TO_DATE('2001-7-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500025', '22000', '10000', 'Quan li', NULL, 2, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('QL026', 'Tran Song Ðang', 'Nam', TO_DATE('2006-5-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500026', '22000', '10000', 'Quan li', NULL, 3, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('QL027', 'An Chi Vinh', 'Nam', TO_DATE('2016-3-22','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500027', '22000', '10000', 'Quan li', NULL, 4, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('QL028', 'Vo Chi Bao', 'Nam', TO_DATE('2001-1-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500028', '22000', '10000', 'Quan li', NULL, 5, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('QL029', 'Duong Hoang Cau', 'Nam', TO_DATE('2005-11-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500029', '22000', '10000', 'Quan li', NULL, 6, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('QL030', 'Duong Gia May', 'Nam', TO_DATE('2003-10-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500030', '22000', '10000', 'Quan li', NULL, 7, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('QL031', 'Gian Tung Duy', 'Nu', TO_DATE('2012-8-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500031', '22000', '10000', 'Quan li', NULL, 8, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('QL032', 'Au Van Bao', 'Nam', TO_DATE('2016-7-22','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500032', '22000', '10000', 'Quan li', NULL, 1, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('QL033', 'Au Van Tuan', 'Nu', TO_DATE('2012-7-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500033', '22000', '10000', 'Quan li', NULL, 2, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('QL034', 'Lai Van Han', 'Nu', TO_DATE('2000-9-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500034', '22000', '10000', 'Quan li', NULL, 3, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('QL035', 'Tran Chi An', 'Nu', TO_DATE('2002-3-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500035', '22000', '10000', 'Quan li', NULL, 4, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('TDA036', 'Ly Gia Chung', 'Nu', TO_DATE('2019-8-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500036', '22000', '10000', 'Truong de an', NULL, 5, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('TDA037', 'Bui Tung Vy', 'Nu', TO_DATE('2004-1-1','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500037', '22000', '10000', 'Truong de an', NULL, 6, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('TDA038', 'Bui Chi Vy', 'Nam', TO_DATE('2021-12-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500038', '22000', '10000', 'Truong de an', NULL, 7, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('TP039', 'Ung Van Phu', 'Nam', TO_DATE('2014-8-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500039', '22000', '10000', 'Truong phong', NULL, 1, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('TP040', 'Vo Gia Tien', 'Nu', TO_DATE('2014-5-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500040', '22000', '10000', 'Truong phong', NULL, 2, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('TP041', 'Bui Tung Quoc', 'Nu', TO_DATE('2004-7-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500041', '22000', '10000', 'Truong phong', NULL, 3, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('TP042', 'Au Hoang Thuong', 'Nu', TO_DATE('2012-2-17','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500042', '22000', '10000', 'Truong phong', NULL, 4, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('TP043', 'Ðang Gia Minh', 'Nu', TO_DATE('2019-6-11','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500043', '22000', '10000', 'Truong phong', NULL, 5, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('TP044', 'Nguyen Van Vinh', 'Nu', TO_DATE('2014-11-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500044', '22000', '10000', 'Truong phong', NULL, 6, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('TP045', 'Ho Song Ngan', 'Nam', TO_DATE('2001-8-26','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500045', '22000', '10000', 'Truong phong', NULL, 7, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('TP046', 'Le Chi Anh', 'Nu', TO_DATE('2008-6-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500046', '22000', '10000', 'Truong phong', NULL, 8, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV47', 'Bui Thi Quoc', 'Nu', TO_DATE('2003-5-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500047', '22000', '10000', 'Nhan vien', 'QL016', 8, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV48', 'Ðang Tung Ðuc', 'Nam', TO_DATE('2011-3-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500048', '22000', '10000', 'Nhan vien', 'QL017', 1, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV49', 'Lai Gia Quoc', 'Nam', TO_DATE('2015-11-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500049', '22000', '10000', 'Nhan vien', 'QL018', 2, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV50', 'Nguyen Song Thien', 'Nu', TO_DATE('2017-9-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500050', '22000', '10000', 'Nhan vien', 'QL019', 3, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV51', 'Ðang Thi Chi', 'Nam', TO_DATE('2019-1-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500051', '22000', '10000', 'Nhan vien', 'QL020', 4, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV52', 'Nguyen Song Cuc', 'Nu', TO_DATE('2014-8-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500052', '22000', '10000', 'Nhan vien', 'QL021', 5, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV53', 'Pham Van Nam', 'Nu', TO_DATE('2006-10-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500053', '22000', '10000', 'Nhan vien', 'QL022', 6, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV54', 'Tran Hoang Vinh', 'Nam', TO_DATE('2002-4-22','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500054', '22000', '10000', 'Nhan vien', 'QL023', 7, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV55', 'Tran Hoang Sang', 'Nam', TO_DATE('2004-3-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500055', '22000', '10000', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV56', 'Truong Chi Phu', 'Nam', TO_DATE('2019-6-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500056', '22000', '10000', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV57', 'Tran Tung Thien', 'Nu', TO_DATE('2018-10-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500057', '22000', '10000', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV58', 'Bui Thi Duy', 'Nam', TO_DATE('2015-6-11','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500058', '22000', '10000', 'Nhan vien', 'QL027', 3, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV59', 'Ung Gia Thuong', 'Nu', TO_DATE('2007-3-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500059', '22000', '10000', 'Nhan vien', 'QL028', 4, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV60', 'Au Song Thien', 'Nam', TO_DATE('2008-6-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500060', '22000', '10000', 'Nhan vien', 'QL029', 5, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV61', 'Ho Thi Chung', 'Nu', TO_DATE('2013-1-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500061', '22000', '10000', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV62', 'Ly Chi An', 'Nam', TO_DATE('2000-11-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500062', '22000', '10000', 'Nhan vien', 'QL031', 7, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV63', 'Vu Tung Quoc', 'Nu', TO_DATE('2002-8-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500063', '22000', '10000', 'Nhan vien', 'QL032', 8, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV64', 'Bui Gia Giang', 'Nu', TO_DATE('2017-8-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500064', '22000', '10000', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV65', 'An Hoang Thuong', 'Nam', TO_DATE('2016-5-26','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500065', '22000', '10000', 'Nhan vien', 'QL034', 2, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV66', 'An Song May', 'Nu', TO_DATE('2004-6-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500066', '22000', '10000', 'Nhan vien', 'QL035', 3, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV67', 'Pham Tung Han', 'Nu', TO_DATE('2003-12-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500067', '22000', '10000', 'Nhan vien', 'QL016', 4, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV68', 'Ho Tung Duy', 'Nam', TO_DATE('2007-11-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500068', '22000', '10000', 'Nhan vien', 'QL017', 5, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV69', 'Tran Hoang Bac', 'Nu', TO_DATE('2018-6-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500069', '22000', '10000', 'Nhan vien', 'QL018', 6, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV70', 'Ðang Thi Tu', 'Nu', TO_DATE('2020-8-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500070', '22000', '10000', 'Nhan vien', 'QL019', 7, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV71', 'Ho Van Tan', 'Nam', TO_DATE('2006-4-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500071', '22000', '10000', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV72', 'Le Chi Ngan', 'Nu', TO_DATE('2004-3-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500072', '22000', '10000', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV73', 'Nguyen Thi May', 'Nam', TO_DATE('2011-8-17','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500073', '22000', '10000', 'Nhan vien', 'QL022', 2, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV74', 'Nguyen Chi Tan', 'Nam', TO_DATE('2012-10-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500074', '22000', '10000', 'Nhan vien', 'QL023', 3, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV75', 'Ðoan Gia Tin', 'Nu', TO_DATE('2007-6-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500075', '22000', '10000', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV76', 'Vo Gia Chung', 'Nam', TO_DATE('2004-5-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500076', '22000', '10000', 'Nhan vien', 'QL025', 5, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV77', 'Ðoan Song Tin', 'Nam', TO_DATE('2005-9-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500077', '22000', '10000', 'Nhan vien', 'QL026', 6, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV78', 'Vu Hoang Nam', 'Nu', TO_DATE('2006-11-22','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500078', '22000', '10000', 'Nhan vien', 'QL027', 7, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV79', 'Pham Song Sang', 'Nam', TO_DATE('2018-8-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500079', '22000', '10000', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV80', 'Nguyen Song Chi', 'Nu', TO_DATE('2009-11-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500080', '22000', '10000', 'Nhan vien', 'QL029', 1, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV81', 'Ung Thi Tiep', 'Nam', TO_DATE('2013-10-17','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500081', '22000', '10000', 'Nhan vien', 'QL030', 2, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV82', 'Ung Hoang Tuan', 'Nu', TO_DATE('2014-9-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500082', '22000', '10000', 'Nhan vien', 'QL031', 3, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV83', 'Pham Chi Chi', 'Nu', TO_DATE('2012-11-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500083', '22000', '10000', 'Nhan vien', 'QL032', 4, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV84', 'Ho Song Vu', 'Nu', TO_DATE('2013-12-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500084', '22000', '10000', 'Nhan vien', 'QL033', 5, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV85', 'Bui Gia Chi', 'Nu', TO_DATE('2003-5-11','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500085', '22000', '10000', 'Nhan vien', 'QL034', 6, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV86', 'Ly Hoang Tu', 'Nu', TO_DATE('2020-1-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500086', '22000', '10000', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV87', 'Ung Song khanh', 'Nam', TO_DATE('2011-1-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500087', '22000', '10000', 'Nhan vien', 'QL016', 8, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV88', 'Le Chi May', 'Nu', TO_DATE('2014-1-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500088', '22000', '10000', 'Nhan vien', 'QL017', 1, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV89', 'Pham Tung Viet', 'Nam', TO_DATE('2019-6-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500089', '22000', '10000', 'Nhan vien', 'QL018', 2, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV90', 'Au Van Bao', 'Nu', TO_DATE('2002-1-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500090', '22000', '10000', 'Nhan vien', 'QL019', 3, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV91', 'Nguyen Van Giang', 'Nam', TO_DATE('2020-3-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500091', '22000', '10000', 'Nhan vien', 'QL020', 4, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV92', 'Nguyen Song Cau', 'Nam', TO_DATE('2008-4-26','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500092', '22000', '10000', 'Nhan vien', 'QL021', 5, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV93', 'Vu Song Ðang', 'Nu', TO_DATE('2016-12-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500093', '22000', '10000', 'Nhan vien', 'QL022', 6, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV94', 'Pham Tung Bac', 'Nam', TO_DATE('2012-7-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500094', '22000', '10000', 'Nhan vien', 'QL023', 7, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV95', 'Ung Song Ðang', 'Nu', TO_DATE('2016-4-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500095', '22000', '10000', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV96', 'Nguyen Hoang Phu', 'Nam', TO_DATE('2007-11-1','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500096', '22000', '10000', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV97', 'Ho Thi Han', 'Nam', TO_DATE('2012-10-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500097', '22000', '10000', 'Nhan vien', 'QL026', 2, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV98', 'Ho Chi Ðuc', 'Nam', TO_DATE('2022-11-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500098', '22000', '10000', 'Nhan vien', 'QL027', 3, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV99', 'Lai Chi Cau', 'Nu', TO_DATE('2013-3-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '094500099', '22000', '10000', 'Nhan vien', 'QL028', 4, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV100', 'Ðoan Thi An', 'Nam', TO_DATE('2022-11-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000100', '22000', '10000', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV101', 'Nguyen Hoang Tin', 'Nu', TO_DATE('2015-9-22','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000101', '22000', '10000', 'Nhan vien', 'QL030', 6, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV102', 'Gian Thi Giang', 'Nu', TO_DATE('2001-2-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000102', '22000', '10000', 'Nhan vien', 'QL031', 7, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV103', 'Vo Tung Vinh', 'Nu', TO_DATE('2006-2-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000103', '22000', '10000', 'Nhan vien', 'QL032', 8, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV104', 'Bui Thi Anh', 'Nam', TO_DATE('2009-7-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000104', '22000', '10000', 'Nhan vien', 'QL033', 1, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV105', 'Ho Tung Tan', 'Nu', TO_DATE('2022-5-6','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000105', '22000', '10000', 'Nhan vien', 'QL034', 2, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV106', 'Vu Hoang Ngoc Nhi', 'Nu', TO_DATE('2005-9-28','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000106', '22000', '10000', 'Nhan vien', 'QL035', 3, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV107', 'Vu Thi Chi', 'Nam', TO_DATE('2008-8-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000107', '22000', '10000', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV108', 'Vu Van Tien', 'Nam', TO_DATE('2001-3-28','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000108', '22000', '10000', 'Nhan vien', 'QL017', 5, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV109', 'Nguyen Thi Thien', 'Nam', TO_DATE('2018-5-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000109', '22000', '10000', 'Nhan vien', 'QL018', 6, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV110', 'Lai Hoang Duy', 'Nam', TO_DATE('2004-9-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000110', '22000', '10000', 'Nhan vien', 'QL019', 7, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV111', 'Vu Van Phu', 'Nu', TO_DATE('2003-4-28','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000111', '22000', '10000', 'Nhan vien', 'QL020', 8, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV112', 'An Gia Thuong', 'Nu', TO_DATE('2020-5-26','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000112', '22000', '10000', 'Nhan vien', 'QL021', 1, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV113', 'Le Song Ðang', 'Nu', TO_DATE('2001-9-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000113', '22000', '10000', 'Nhan vien', 'QL022', 2, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV114', 'Nguyen Song Bac', 'Nam', TO_DATE('2016-9-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000114', '22000', '10000', 'Nhan vien', 'QL023', 3, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV115', 'Ung Song Phu', 'Nu', TO_DATE('2009-5-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000115', '22000', '10000', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV116', 'Tran Chi Vu', 'Nu', TO_DATE('2022-12-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000116', '22000', '10000', 'Nhan vien', 'QL025', 5, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV117', 'Bui Thi Minh', 'Nu', TO_DATE('2010-3-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000117', '22000', '10000', 'Nhan vien', 'QL026', 6, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV118', 'Nguyen Van Bac', 'Nu', TO_DATE('2013-9-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000118', '22000', '10000', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV119', 'Pham Thi May', 'Nam', TO_DATE('2017-9-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000119', '22000', '10000', 'Nhan vien', 'QL028', 8, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV120', 'Ho Song Thuong', 'Nam', TO_DATE('2013-12-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000120', '22000', '10000', 'Nhan vien', 'QL029', 1, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV121', 'Pham Song Chi', 'Nu', TO_DATE('2016-9-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000121', '22000', '10000', 'Nhan vien', 'QL030', 2, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV122', 'Ho Thi Tin', 'Nam', TO_DATE('2004-7-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000122', '22000', '10000', 'Nhan vien', 'QL031', 3, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV123', 'An Chi Nam', 'Nam', TO_DATE('2021-1-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000123', '22000', '10000', 'Nhan vien', 'QL032', 4, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV124', 'Vu Chi Cuc', 'Nam', TO_DATE('2016-8-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000124', '22000', '10000', 'Nhan vien', 'QL033', 5, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV125', 'Ho Hoang Thien', 'Nu', TO_DATE('2018-7-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000125', '22000', '10000', 'Nhan vien', 'QL034', 6, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV126', 'Au Thi Han', 'Nu', TO_DATE('2019-7-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000126', '22000', '10000', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV127', 'Nguyen Chi Tiep', 'Nam', TO_DATE('2001-4-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000127', '22000', '10000', 'Nhan vien', 'QL016', 8, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV128', 'Tran Hoang An', 'Nu', TO_DATE('2018-11-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000128', '22000', '10000', 'Nhan vien', 'QL017', 1, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV129', 'Ðoan Hoang Vu', 'Nam', TO_DATE('2010-4-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000129', '22000', '10000', 'Nhan vien', 'QL018', 2, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV130', 'Le Thi Viet', 'Nam', TO_DATE('2020-5-11','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000130', '22000', '10000', 'Nhan vien', 'QL019', 3, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV131', 'Le Song Tan', 'Nu', TO_DATE('2004-11-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000131', '22000', '10000', 'Nhan vien', 'QL020', 4, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV132', 'Le Hoang Bao', 'Nu', TO_DATE('2016-6-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000132', '22000', '10000', 'Nhan vien', 'QL021', 5, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV133', 'Ho Tung Minh', 'Nam', TO_DATE('2000-4-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000133', '22000', '10000', 'Nhan vien', 'QL022', 6, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV134', 'Duong Hoang Duy', 'Nam', TO_DATE('2000-12-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000134', '22000', '10000', 'Nhan vien', 'QL023', 7, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV135', 'Duong Thi Tien', 'Nu', TO_DATE('2002-11-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000135', '22000', '10000', 'Nhan vien', 'QL024', 8, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV136', 'Gian Song Thong', 'Nu', TO_DATE('2012-5-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000136', '22000', '10000', 'Nhan vien', 'QL025', 1, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV137', 'Au Gia Viet', 'Nam', TO_DATE('2011-5-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000137', '22000', '10000', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV138', 'Vo Chi Cuc', 'Nu', TO_DATE('2013-11-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000138', '22000', '10000', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV139', 'Truong Tung khanh', 'Nu', TO_DATE('2018-2-6','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000139', '22000', '10000', 'Nhan vien', 'QL028', 4, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV140', 'Ly Gia Nguyet', 'Nam', TO_DATE('2002-12-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000140', '22000', '10000', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV141', 'Pham Tung Nguyet', 'Nu', TO_DATE('2007-12-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000141', '22000', '10000', 'Nhan vien', 'QL030', 6, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV142', 'Ly Song Anh', 'Nam', TO_DATE('2005-12-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000142', '22000', '10000', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV143', 'Ung Gia Tiep', 'Nam', TO_DATE('2006-2-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000143', '22000', '10000', 'Nhan vien', 'QL032', 8, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV144', 'Ðang Thi Tuan', 'Nam', TO_DATE('2001-8-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000144', '22000', '10000', 'Nhan vien', 'QL033', 1, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV145', 'Lai Thi Bao', 'Nam', TO_DATE('2022-3-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000145', '22000', '10000', 'Nhan vien', 'QL034', 2, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV146', 'Gian Tung Sang', 'Nu', TO_DATE('2006-5-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000146', '22000', '10000', 'Nhan vien', 'QL035', 3, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV147', 'Vu Thi Phu', 'Nu', TO_DATE('2003-8-28','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000147', '22000', '10000', 'Nhan vien', 'QL016', 4, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV148', 'Bui Chi Chung', 'Nu', TO_DATE('2018-12-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000148', '22000', '10000', 'Nhan vien', 'QL017', 5, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV149', 'Truong Thi Nguyet', 'Nam', TO_DATE('2017-2-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000149', '22000', '10000', 'Nhan vien', 'QL018', 6, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV150', 'Gian Gia Anh', 'Nu', TO_DATE('2011-10-6','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000150', '22000', '10000', 'Nhan vien', 'QL019', 7, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV151', 'Nguyen Thi Han', 'Nam', TO_DATE('2012-3-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000151', '22000', '10000', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV152', 'Gian Song Ngoc Nhi', 'Nu', TO_DATE('2018-7-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000152', '22000', '10000', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV153', 'Vu Tung Tiep', 'Nam', TO_DATE('2002-5-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000153', '22000', '10000', 'Nhan vien', 'QL022', 2, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV154', 'Gian Gia Giang', 'Nam', TO_DATE('2020-2-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000154', '22000', '10000', 'Nhan vien', 'QL023', 3, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV155', 'Pham Thi Ðuc', 'Nam', TO_DATE('2010-10-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000155', '22000', '10000', 'Nhan vien', 'QL024', 4, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV156', 'Nguyen Van Cau', 'Nam', TO_DATE('2012-6-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000156', '22000', '10000', 'Nhan vien', 'QL025', 5, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV157', 'Vo Chi Vu', 'Nam', TO_DATE('2013-10-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000157', '22000', '10000', 'Nhan vien', 'QL026', 6, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV158', 'An Van Chi', 'Nam', TO_DATE('2004-2-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000158', '22000', '10000', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV159', 'Lai Van Sang', 'Nam', TO_DATE('2010-9-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000159', '22000', '10000', 'Nhan vien', 'QL028', 8, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV160', 'Le Chi Thien', 'Nu', TO_DATE('2019-11-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000160', '22000', '10000', 'Nhan vien', 'QL029', 1, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV161', 'Ung Thi May', 'Nu', TO_DATE('2008-10-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000161', '22000', '10000', 'Nhan vien', 'QL030', 2, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV162', 'Vo Song Sang', 'Nu', TO_DATE('2021-7-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000162', '22000', '10000', 'Nhan vien', 'QL031', 3, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV163', 'Truong Song Nguyet', 'Nu', TO_DATE('2008-7-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000163', '22000', '10000', 'Nhan vien', 'QL032', 4, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV164', 'Gian Chi Sang', 'Nu', TO_DATE('2008-7-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000164', '22000', '10000', 'Nhan vien', 'QL033', 5, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV165', 'Lai Tung Tuan', 'Nam', TO_DATE('2000-2-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000165', '22000', '10000', 'Nhan vien', 'QL034', 6, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV166', 'Lai Hoang Thuong', 'Nu', TO_DATE('2007-3-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000166', '22000', '10000', 'Nhan vien', 'QL035', 7, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV167', 'Ho Hoang Giang', 'Nam', TO_DATE('2007-11-6','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000167', '22000', '10000', 'Nhan vien', 'QL016', 8, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV168', 'Lai Thi Chi', 'Nam', TO_DATE('2009-10-11','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000168', '22000', '10000', 'Nhan vien', 'QL017', 1, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV169', 'Au Thi Cau', 'Nu', TO_DATE('2012-3-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000169', '22000', '10000', 'Nhan vien', 'QL018', 2, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV170', 'Lai Gia Viet', 'Nam', TO_DATE('2001-2-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000170', '22000', '10000', 'Nhan vien', 'QL019', 3, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV171', 'Pham Chi Ðang', 'Nam', TO_DATE('2002-6-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000171', '22000', '10000', 'Nhan vien', 'QL020', 4, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV172', 'An Gia khanh', 'Nam', TO_DATE('2005-10-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000172', '22000', '10000', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV173', 'Lai Hoang Tan', 'Nu', TO_DATE('2008-6-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000173', '22000', '10000', 'Nhan vien', 'QL022', 6, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV174', 'Ðoan Thi Bao', 'Nam', TO_DATE('2015-2-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000174', '22000', '10000', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV175', 'Duong Thi Ðuc', 'Nu', TO_DATE('2002-4-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000175', '22000', '10000', 'Nhan vien', 'QL024', 8, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV176', 'Bui Tung Minh', 'Nam', TO_DATE('2004-2-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000176', '22000', '10000', 'Nhan vien', 'QL025', 1, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV177', 'Ðoan Hoang Ngoc Nhi', 'Nam', TO_DATE('2000-9-26','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000177', '22000', '10000', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV178', 'Nguyen Thi Han', 'Nam', TO_DATE('2017-11-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000178', '22000', '10000', 'Nhan vien', 'QL027', 3, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV179', 'Le Gia Vinh', 'Nu', TO_DATE('2016-1-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000179', '22000', '10000', 'Nhan vien', 'QL028', 4, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV180', 'Vo Thi Cau', 'Nam', TO_DATE('2019-1-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000180', '22000', '10000', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV181', 'Ðoan Gia Cuc', 'Nu', TO_DATE('2019-7-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000181', '22000', '10000', 'Nhan vien', 'QL030', 6, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV182', 'An Hoang Chung', 'Nu', TO_DATE('2014-8-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000182', '22000', '10000', 'Nhan vien', 'QL031', 7, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV183', 'Le Thi Tiep', 'Nam', TO_DATE('2013-3-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000183', '22000', '10000', 'Nhan vien', 'QL032', 8, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV184', 'Le Van Ngan', 'Nam', TO_DATE('2018-4-1','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000184', '22000', '10000', 'Nhan vien', 'QL033', 1, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV185', 'Pham Thi Giang', 'Nu', TO_DATE('2001-2-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000185', '22000', '10000', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV186', 'Gian Tung Cau', 'Nam', TO_DATE('2001-8-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000186', '22000', '10000', 'Nhan vien', 'QL035', 3, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV187', 'Au Gia Ngan', 'Nam', TO_DATE('2021-1-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000187', '22000', '10000', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV188', 'Gian Van Tiep', 'Nu', TO_DATE('2016-10-6','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000188', '22000', '10000', 'Nhan vien', 'QL017', 5, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV189', 'Lai Tung Viet', 'Nu', TO_DATE('2011-8-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000189', '22000', '10000', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV190', 'Vo Chi Chi', 'Nam', TO_DATE('2017-1-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000190', '22000', '10000', 'Nhan vien', 'QL019', 7, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV191', 'Lai Hoang Sang', 'Nu', TO_DATE('2000-11-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000191', '22000', '10000', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV192', 'Au Van Thien', 'Nam', TO_DATE('2003-10-1','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000192', '22000', '10000', 'Nhan vien', 'QL021', 1, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV193', 'Duong Thi Nam', 'Nu', TO_DATE('2021-11-1','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000193', '22000', '10000', 'Nhan vien', 'QL022', 2, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV194', 'Ho Song Han', 'Nam', TO_DATE('2022-8-11','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000194', '22000', '10000', 'Nhan vien', 'QL023', 3, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV195', 'Lai Song Tuan', 'Nam', TO_DATE('2019-4-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000195', '22000', '10000', 'Nhan vien', 'QL024', 4, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV196', 'Gian Song Ðang', 'Nam', TO_DATE('2003-8-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000196', '22000', '10000', 'Nhan vien', 'QL025', 5, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV197', 'Tran Tung Tuan', 'Nu', TO_DATE('2005-9-1','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000197', '22000', '10000', 'Nhan vien', 'QL026', 6, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV198', 'Ung Hoang Nam', 'Nam', TO_DATE('2008-9-17','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000198', '22000', '10000', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV199', 'Duong Song Thuong', 'Nam', TO_DATE('2019-2-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000199', '22000', '10000', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV200', 'Ly Van Ngoc Nhi', 'Nu', TO_DATE('2000-1-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000200', '22000', '10000', 'Nhan vien', 'QL029', 1, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV201', 'Pham Chi khanh', 'Nam', TO_DATE('2020-2-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000201', '22000', '10000', 'Nhan vien', 'QL030', 2, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV202', 'Vu Van Ðan', 'Nam', TO_DATE('2015-6-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000202', '22000', '10000', 'Nhan vien', 'QL031', 3, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV203', 'Ly Gia Bac', 'Nam', TO_DATE('2002-11-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000203', '22000', '10000', 'Nhan vien', 'QL032', 4, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV204', 'Ðang Van Tu', 'Nam', TO_DATE('2002-4-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000204', '22000', '10000', 'Nhan vien', 'QL033', 5, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV205', 'Truong Hoang Han', 'Nam', TO_DATE('2019-12-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000205', '22000', '10000', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV206', 'Nguyen Tung Chi', 'Nu', TO_DATE('2016-6-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000206', '22000', '10000', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV207', 'Duong Hoang Ðan', 'Nam', TO_DATE('2018-11-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000207', '22000', '10000', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV208', 'Truong Chi Quoc', 'Nam', TO_DATE('2003-5-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000208', '22000', '10000', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV209', 'Ly Hoang Chi', 'Nam', TO_DATE('2019-2-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000209', '22000', '10000', 'Nhan vien', 'QL018', 2, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV210', 'Gian Thi Vy', 'Nu', TO_DATE('2019-8-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000210', '22000', '10000', 'Nhan vien', 'QL019', 3, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV211', 'Ho Tung Vy', 'Nam', TO_DATE('2020-9-6','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000211', '22000', '10000', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV212', 'An Hoang Nguyet', 'Nam', TO_DATE('2007-1-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000212', '22000', '10000', 'Nhan vien', 'QL021', 5, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV213', 'Pham Chi Ðuc', 'Nam', TO_DATE('2001-7-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000213', '22000', '10000', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV214', 'Gian Thi Tin', 'Nam', TO_DATE('2016-8-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000214', '22000', '10000', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV215', 'Duong Tung May', 'Nam', TO_DATE('2005-4-22','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000215', '22000', '10000', 'Nhan vien', 'QL024', 8, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV216', 'Truong Tung Tu', 'Nam', TO_DATE('2004-2-17','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000216', '22000', '10000', 'Nhan vien', 'QL025', 1, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV217', 'Pham Gia Sang', 'Nu', TO_DATE('2013-12-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000217', '22000', '10000', 'Nhan vien', 'QL026', 2, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV218', 'Ðang Gia Vu', 'Nam', TO_DATE('2008-9-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000218', '22000', '10000', 'Nhan vien', 'QL027', 3, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV219', 'Pham Thi Han', 'Nam', TO_DATE('2015-3-17','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000219', '22000', '10000', 'Nhan vien', 'QL028', 4, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV220', 'Vu Song Ngoc Nhi', 'Nam', TO_DATE('2008-12-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000220', '22000', '10000', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV221', 'Ðoan Thi Cuc', 'Nam', TO_DATE('2016-3-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000221', '22000', '10000', 'Nhan vien', 'QL030', 6, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV222', 'Nguyen Hoang Chi', 'Nam', TO_DATE('2022-6-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000222', '22000', '10000', 'Nhan vien', 'QL031', 7, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV223', 'Pham Song Phu', 'Nu', TO_DATE('2015-2-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000223', '22000', '10000', 'Nhan vien', 'QL032', 8, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV224', 'Ung Tung Tan', 'Nu', TO_DATE('2009-1-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000224', '22000', '10000', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV225', 'Le Song Chi', 'Nu', TO_DATE('2013-11-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000225', '22000', '10000', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV226', 'Tran Chi Tin', 'Nam', TO_DATE('2019-2-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000226', '22000', '10000', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV227', 'Ung Van khanh', 'Nam', TO_DATE('2017-3-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000227', '22000', '10000', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV228', 'Ho Tung Tuan', 'Nu', TO_DATE('2022-6-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000228', '22000', '10000', 'Nhan vien', 'QL017', 5, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV229', 'Le Song Thong', 'Nam', TO_DATE('2012-1-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000229', '22000', '10000', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV230', 'Lai Thi Vinh', 'Nam', TO_DATE('2011-11-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000230', '22000', '10000', 'Nhan vien', 'QL019', 7, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV231', 'Vo Tung Thuong', 'Nu', TO_DATE('2010-3-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000231', '22000', '10000', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV232', 'Tran Hoang Giang', 'Nu', TO_DATE('2001-2-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000232', '22000', '10000', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV233', 'Pham Hoang Giang', 'Nu', TO_DATE('2006-9-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000233', '22000', '10000', 'Nhan vien', 'QL022', 2, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV234', 'Lai Chi Thong', 'Nam', TO_DATE('2019-2-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000234', '22000', '10000', 'Nhan vien', 'QL023', 3, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV235', 'Truong Van Duy', 'Nu', TO_DATE('2000-2-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000235', '22000', '10000', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV236', 'Le Tung Minh', 'Nu', TO_DATE('2018-12-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000236', '22000', '10000', 'Nhan vien', 'QL025', 5, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV237', 'Bui Thi Chi', 'Nam', TO_DATE('2022-10-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000237', '22000', '10000', 'Nhan vien', 'QL026', 6, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV238', 'An Hoang Tin', 'Nam', TO_DATE('2010-1-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000238', '22000', '10000', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV239', 'Ðoan Thi Phu', 'Nam', TO_DATE('2017-1-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000239', '22000', '10000', 'Nhan vien', 'QL028', 8, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV240', 'Vu Gia Minh', 'Nu', TO_DATE('2020-12-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000240', '22000', '10000', 'Nhan vien', 'QL029', 1, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV241', 'Ðang Van Tuan', 'Nam', TO_DATE('2016-12-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000241', '22000', '10000', 'Nhan vien', 'QL030', 2, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV242', 'Le Chi Tu', 'Nu', TO_DATE('2011-9-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000242', '22000', '10000', 'Nhan vien', 'QL031', 3, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV243', 'Truong Chi Duy', 'Nu', TO_DATE('2011-9-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000243', '22000', '10000', 'Nhan vien', 'QL032', 4, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV244', 'Ðoan Gia Cuc', 'Nam', TO_DATE('2012-8-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000244', '22000', '10000', 'Nhan vien', 'QL033', 5, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV245', 'An Thi Vy', 'Nam', TO_DATE('2019-8-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000245', '22000', '10000', 'Nhan vien', 'QL034', 6, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV246', 'Le Hoang Thien', 'Nu', TO_DATE('2007-6-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000246', '22000', '10000', 'Nhan vien', 'QL035', 7, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV247', 'Ho Chi Han', 'Nam', TO_DATE('2013-3-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000247', '22000', '10000', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV248', 'Ðoan Hoang Quoc', 'Nu', TO_DATE('2002-12-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000248', '22000', '10000', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV249', 'Bui Tung Thien', 'Nu', TO_DATE('2017-3-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000249', '22000', '10000', 'Nhan vien', 'QL018', 2, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV250', 'Vu Gia Sang', 'Nu', TO_DATE('2011-2-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000250', '22000', '10000', 'Nhan vien', 'QL019', 3, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV251', 'Au Thi Minh', 'Nam', TO_DATE('2004-11-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000251', '22000', '10000', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV252', 'Vo Chi Tuan', 'Nu', TO_DATE('2003-3-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000252', '22000', '10000', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV253', 'Ly Hoang Vy', 'Nu', TO_DATE('2003-11-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000253', '22000', '10000', 'Nhan vien', 'QL022', 6, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV254', 'Ðoan Song Minh', 'Nu', TO_DATE('2021-4-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000254', '22000', '10000', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV255', 'Ðang Thi Minh', 'Nam', TO_DATE('2009-3-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000255', '22000', '10000', 'Nhan vien', 'QL024', 8, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV256', 'Au Gia Tin', 'Nu', TO_DATE('2007-7-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000256', '22000', '10000', 'Nhan vien', 'QL025', 1, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV257', 'Bui Tung Thien', 'Nam', TO_DATE('2010-8-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000257', '22000', '10000', 'Nhan vien', 'QL026', 2, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV258', 'Pham Hoang Vu', 'Nam', TO_DATE('2011-7-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000258', '22000', '10000', 'Nhan vien', 'QL027', 3, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV259', 'Lai Chi Nguyet', 'Nam', TO_DATE('2007-10-1','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000259', '22000', '10000', 'Nhan vien', 'QL028', 4, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV260', 'Nguyen Van Vu', 'Nu', TO_DATE('2001-12-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000260', '22000', '10000', 'Nhan vien', 'QL029', 5, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV261', 'Vo Van An', 'Nam', TO_DATE('2015-8-28','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000261', '22000', '10000', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV262', 'Lai Song Ðuc', 'Nu', TO_DATE('2011-8-17','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000262', '22000', '10000', 'Nhan vien', 'QL031', 7, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV263', 'Truong Gia Thuong', 'Nam', TO_DATE('2016-2-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000263', '22000', '10000', 'Nhan vien', 'QL032', 8, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV264', 'An Song Nguyet', 'Nu', TO_DATE('2020-9-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000264', '22000', '10000', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV265', 'Ðoan Van Tan', 'Nam', TO_DATE('2000-12-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000265', '22000', '10000', 'Nhan vien', 'QL034', 2, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV266', 'Ho Gia Ðan', 'Nam', TO_DATE('2021-4-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000266', '22000', '10000', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV267', 'Truong Hoang Anh', 'Nu', TO_DATE('2019-8-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000267', '22000', '10000', 'Nhan vien', 'QL016', 4, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV268', 'Ung Hoang Tu', 'Nu', TO_DATE('2001-9-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000268', '22000', '10000', 'Nhan vien', 'QL017', 5, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV269', 'Ung Tung Han', 'Nam', TO_DATE('2016-3-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000269', '22000', '10000', 'Nhan vien', 'QL018', 6, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV270', 'Gian Song May', 'Nu', TO_DATE('2002-1-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000270', '22000', '10000', 'Nhan vien', 'QL019', 7, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV271', 'Ung Gia Tin', 'Nam', TO_DATE('2008-6-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000271', '22000', '10000', 'Nhan vien', 'QL020', 8, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV272', 'Le Hoang Vy', 'Nu', TO_DATE('2002-2-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000272', '22000', '10000', 'Nhan vien', 'QL021', 1, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV273', 'Tran Hoang Ðang', 'Nu', TO_DATE('2008-8-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000273', '22000', '10000', 'Nhan vien', 'QL022', 2, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV274', 'Au Gia Tan', 'Nam', TO_DATE('2007-10-28','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000274', '22000', '10000', 'Nhan vien', 'QL023', 3, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV275', 'Le Tung Han', 'Nam', TO_DATE('2018-2-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000275', '22000', '10000', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV276', 'Tran Hoang Tan', 'Nu', TO_DATE('2010-4-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000276', '22000', '10000', 'Nhan vien', 'QL025', 5, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV277', 'Pham Thi Chi', 'Nam', TO_DATE('2013-6-26','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000277', '22000', '10000', 'Nhan vien', 'QL026', 6, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV278', 'Ðang Thi Ðuc', 'Nam', TO_DATE('2000-1-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000278', '22000', '10000', 'Nhan vien', 'QL027', 7, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV279', 'Ðoan Hoang Anh', 'Nu', TO_DATE('2001-5-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000279', '22000', '10000', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV280', 'Ung Thi May', 'Nam', TO_DATE('2006-10-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000280', '22000', '10000', 'Nhan vien', 'QL029', 1, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV281', 'Vu Song Tu', 'Nam', TO_DATE('2004-8-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000281', '22000', '10000', 'Nhan vien', 'QL030', 2, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV282', 'Nguyen Thi Tien', 'Nam', TO_DATE('2005-7-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000282', '22000', '10000', 'Nhan vien', 'QL031', 3, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV283', 'Vu Hoang Tan', 'Nu', TO_DATE('2015-9-20','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000283', '22000', '10000', 'Nhan vien', 'QL032', 4, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV284', 'Tran Gia Minh', 'Nam', TO_DATE('2016-7-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000284', '22000', '10000', 'Nhan vien', 'QL033', 5, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV285', 'Ðoan Tung Ðuc', 'Nam', TO_DATE('2010-9-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000285', '22000', '10000', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV286', 'Ly Song Phu', 'Nu', TO_DATE('2009-8-13','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000286', '22000', '10000', 'Nhan vien', 'QL035', 7, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV287', 'Truong Thi Cau', 'Nam', TO_DATE('2011-9-26','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000287', '22000', '10000', 'Nhan vien', 'QL016', 8, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV288', 'Lai Thi Ðan', 'Nu', TO_DATE('2000-10-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000288', '22000', '10000', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV289', 'Le Van Bac', 'Nu', TO_DATE('2019-6-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000289', '22000', '10000', 'Nhan vien', 'QL018', 2, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV290', 'Le Gia Tien', 'Nam', TO_DATE('2017-1-11','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000290', '22000', '10000', 'Nhan vien', 'QL019', 3, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV291', 'Lai Thi Ðuc', 'Nam', TO_DATE('2009-4-28','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000291', '22000', '10000', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV292', 'Ðoan Gia Bac', 'Nu', TO_DATE('2009-2-5','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000292', '22000', '10000', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV293', 'Ung Van Nguyet', 'Nam', TO_DATE('2012-6-6','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000293', '22000', '10000', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV294', 'Vo Hoang Minh', 'Nam', TO_DATE('2011-11-11','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000294', '22000', '10000', 'Nhan vien', 'QL023', 7, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV295', 'Bui Tung Tuan', 'Nu', TO_DATE('2008-12-27','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000295', '22000', '10000', 'Nhan vien', 'QL024', 8, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV296', 'Pham Van Ngan', 'Nu', TO_DATE('2018-5-22','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000296', '22000', '10000', 'Nhan vien', 'QL025', 1, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV297', 'Ðoan Hoang An', 'Nam', TO_DATE('2002-12-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000297', '22000', '10000', 'Nhan vien', 'QL026', 2, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV298', 'Pham Gia Giang', 'Nu', TO_DATE('2019-11-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000298', '22000', '10000', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV299', 'Ung Song Sang', 'Nu', TO_DATE('2001-9-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000299', '22000', '10000', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV300', 'Ðang Song Ngan', 'Nam', TO_DATE('2015-4-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000300', '22000', '10000', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV301', 'An Van Thuong', 'Nu', TO_DATE('2002-10-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000301', '22000', '10000', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV302', 'Vu Tung Ðuc', 'Nu', TO_DATE('2018-10-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000302', '22000', '10000', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV303', 'Vu Chi Tien', 'Nu', TO_DATE('2014-2-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000303', '22000', '10000', 'Nhan vien', 'QL032', 8, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV304', 'Duong Gia Phu', 'Nam', TO_DATE('2021-4-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000304', '22000', '10000', 'Nhan vien', 'QL033', 1, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV305', 'Ðoan Gia An', 'Nam', TO_DATE('2020-10-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000305', '22000', '10000', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV306', 'Vu Tung Chung', 'Nu', TO_DATE('2019-10-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000306', '22000', '10000', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV307', 'Gian Thi Vu', 'Nu', TO_DATE('2010-7-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000307', '22000', '10000', 'Nhan vien', 'QL016', 4, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV308', 'Gian Van Cuc', 'Nam', TO_DATE('2021-2-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000308', '22000', '10000', 'Nhan vien', 'QL017', 5, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV309', 'Ho Chi Tan', 'Nu', TO_DATE('2001-9-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000309', '22000', '10000', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV310', 'Tran Hoang Tiep', 'Nu', TO_DATE('2006-9-11','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000310', '22000', '10000', 'Nhan vien', 'QL019', 7, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV311', 'Vo Song Tiep', 'Nam', TO_DATE('2006-3-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000311', '22000', '10000', 'Nhan vien', 'QL020', 8, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV312', 'Ly Hoang Tuan', 'Nu', TO_DATE('2008-10-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000312', '22000', '10000', 'Nhan vien', 'QL021', 1, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV313', 'Le Chi Minh', 'Nu', TO_DATE('2022-10-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000313', '22000', '10000', 'Nhan vien', 'QL022', 2, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV314', 'Vu Tung Nam', 'Nam', TO_DATE('2011-9-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000314', '22000', '10000', 'Nhan vien', 'QL023', 3, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV315', 'Tran Van Thien', 'Nu', TO_DATE('2006-5-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000315', '22000', '10000', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV316', 'Nguyen Gia Chi', 'Nu', TO_DATE('2011-12-7','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000316', '22000', '10000', 'Nhan vien', 'QL025', 5, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV317', 'Vo Hoang Tin', 'Nam', TO_DATE('2017-4-2','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000317', '22000', '10000', 'Nhan vien', 'QL026', 6, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV318', 'Vu Tung Chung', 'Nam', TO_DATE('2018-8-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000318', '22000', '10000', 'Nhan vien', 'QL027', 7, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV319', 'Vo Chi Tan', 'Nam', TO_DATE('2013-5-10','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000319', '22000', '10000', 'Nhan vien', 'QL028', 8, '123', 'Mien Nam', 'San Xuat')
/
 insert into NHANVIEN values('NV320', 'Ung Hoang Tan', 'Nam', TO_DATE('2000-8-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000320', '22000', '10000', 'Nhan vien', 'QL029', 1, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV321', 'Vu Thi Thuong', 'Nam', TO_DATE('2004-7-15','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000321', '22000', '10000', 'Nhan vien', 'QL030', 2, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV322', 'Au Tung Bac', 'Nam', TO_DATE('2009-6-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000322', '22000', '10000', 'Nhan vien', 'QL031', 3, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV323', 'Lai Gia Viet', 'Nu', TO_DATE('2012-7-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000323', '22000', '10000', 'Nhan vien', 'QL032', 4, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV324', 'Ðang Song Sang', 'Nam', TO_DATE('2004-12-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000324', '22000', '10000', 'Nhan vien', 'QL033', 5, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV325', 'Truong Hoang Phu', 'Nam', TO_DATE('2017-7-25','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000325', '22000', '10000', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV326', 'Tran Tung Ðan', 'Nu', TO_DATE('2006-7-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000326', '22000', '10000', 'Nhan vien', 'QL035', 7, '123', 'Mien Bac', 'Gia Cong')
/
 insert into NHANVIEN values('NV327', 'Le Thi Duy', 'Nam', TO_DATE('2013-9-28','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000327', '22000', '10000', 'Nhan vien', 'QL016', 8, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV328', 'Lai Hoang Nam', 'Nam', TO_DATE('2008-10-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000328', '22000', '10000', 'Nhan vien', 'QL017', 1, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV329', 'Ðang Tung Nam', 'Nam', TO_DATE('2004-3-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000329', '22000', '10000', 'Nhan vien', 'QL018', 2, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV330', 'Au Gia Viet', 'Nu', TO_DATE('2008-6-24','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000330', '22000', '10000', 'Nhan vien', 'QL019', 3, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV331', 'Ðoan Chi May', 'Nam', TO_DATE('2015-4-18','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000331', '22000', '10000', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV332', 'Au Van khanh', 'Nu', TO_DATE('2009-3-12','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000332', '22000', '10000', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'Gia Cong')
/
 insert into NHANVIEN values('NV333', 'Nguyen Chi Ngan', 'Nu', TO_DATE('2005-10-28','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000333', '22000', '10000', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV334', 'Au Song Phu', 'Nam', TO_DATE('2014-1-1','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000334', '22000', '10000', 'Nhan vien', 'QL023', 7, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV335', 'Au Song Vy', 'Nu', TO_DATE('2019-8-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000335', '22000', '10000', 'Nhan vien', 'QL024', 8, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV336', 'Vo Hoang Chi', 'Nam', TO_DATE('2004-2-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000336', '22000', '10000', 'Nhan vien', 'QL025', 1, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV337', 'Au Thi Han', 'Nam', TO_DATE('2019-2-8','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000337', '22000', '10000', 'Nhan vien', 'QL026', 2, '123', 'Mien Trung', 'Gia Cong')
/
 insert into NHANVIEN values('NV338', 'An Van Ðang', 'Nam', TO_DATE('2004-11-19','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000338', '22000', '10000', 'Nhan vien', 'QL027', 3, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV339', 'Ho Song Tu', 'Nu', TO_DATE('2012-7-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000339', '22000', '10000', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV340', 'An Van Tin', 'Nu', TO_DATE('2001-8-3','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000340', '22000', '10000', 'Nhan vien', 'QL029', 5, '123', 'Mien Bac', 'Mua Ban')
/
 insert into NHANVIEN values('NV341', 'Ðang Van Cau', 'Nu', TO_DATE('2000-8-23','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000341', '22000', '10000', 'Nhan vien', 'QL030', 6, '123', 'Mien Nam', 'Mua Ban')
/
 insert into NHANVIEN values('NV342', 'Truong Song Viet', 'Nu', TO_DATE('2002-9-21','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000342', '22000', '10000', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'Mua Ban');
/
 insert into NHANVIEN values('NV343', 'Pham Song Ðang', 'Nam', TO_DATE('2008-1-14','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000343', '22000', '10000', 'Nhan vien', 'QL032', 8, '123', 'Mien Bac', 'San Xuat')
/
 insert into NHANVIEN values('NV344', 'Truong Gia Han', 'Nam', TO_DATE('2003-4-9','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000344', '22000', '10000', 'Nhan vien', 'QL033', 1, '123', 'Mien Trung', 'Mua Ban')
/
 insert into NHANVIEN values('NV345', 'Lai Chi Tien', 'Nam', TO_DATE('2002-11-16','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000345', '22000', '10000', 'Nhan vien', 'QL034', 2, '123', 'Mien Trung', 'San Xuat')
/
 insert into NHANVIEN values('NV000', 'An Chi Tu', 'Nu', TO_DATE('2017-4-4','YYYY-MM-DD'), '227 Nguy?n Vãn C?, Phý?ng 4, Qu?n 5, TP. H? Chí Minh', '0945000346', '22000', '10000', 'Admin', null, null, '123', null, null)
/
--------------- END --------------

-- TABLE 4
-- Nhap lieu cho bang ATBM.DEAN ---
----------------------------------
insert all
into ATBM.DEAN values('DA101', 'De An so 1 Phong 1', TO_DATE('2020-12-24','YYYY-MM-DD'), 1, 'TDA038')
into ATBM.DEAN values('DA102', 'De An so 2 Phong 1', TO_DATE('2022-11-25','YYYY-MM-DD'), 1, 'TDA038')
into ATBM.DEAN values('DA103', 'De An so 3 Phong 1', TO_DATE('2020-6-14','YYYY-MM-DD'), 1, 'TDA036')
into ATBM.DEAN values('DA104', 'De An so 4 Phong 1', TO_DATE('2022-5-24','YYYY-MM-DD'), 1, 'TDA038')
into ATBM.DEAN values('DA201', 'De An so 1 Phong 2', TO_DATE('2022-2-15','YYYY-MM-DD'), 2, 'TDA037')
into ATBM.DEAN values('DA202', 'De An so 2 Phong 2', TO_DATE('2020-7-12','YYYY-MM-DD'), 2, 'TDA036')
into ATBM.DEAN values('DA301', 'De An so 1 Phong 3', TO_DATE('2021-12-16','YYYY-MM-DD'), 3, 'TDA038')
into ATBM.DEAN values('DA302', 'De An so 2 Phong 3', TO_DATE('2022-4-27','YYYY-MM-DD'), 3, 'TDA036')
into ATBM.DEAN values('DA401', 'De An so 1 Phong 4', TO_DATE('2022-5-28','YYYY-MM-DD'), 4, 'TDA037')
into ATBM.DEAN values('DA402', 'De An so 2 Phong 4', TO_DATE('2020-2-15','YYYY-MM-DD'), 4, 'TDA038')
into ATBM.DEAN values('DA403', 'De An so 3 Phong 4', TO_DATE('2020-10-26','YYYY-MM-DD'), 4, 'TDA038')
into ATBM.DEAN values('DA404', 'De An so 4 Phong 4', TO_DATE('2020-9-23','YYYY-MM-DD'), 4, 'TDA038')
into ATBM.DEAN values('DA501', 'De An so 1 Phong 5', TO_DATE('2022-12-14','YYYY-MM-DD'), 5, 'TDA037')
into ATBM.DEAN values('DA502', 'De An so 2 Phong 5', TO_DATE('2021-7-11','YYYY-MM-DD'), 5, 'TDA037')
into ATBM.DEAN values('DA601', 'De An so 1 Phong 6', TO_DATE('2021-6-23','YYYY-MM-DD'), 6, 'TDA037')
into ATBM.DEAN values('DA602', 'De An so 2 Phong 6', TO_DATE('2021-12-7','YYYY-MM-DD'), 6, 'TDA038')
into ATBM.DEAN values('DA603', 'De An so 3 Phong 6', TO_DATE('2021-3-10','YYYY-MM-DD'), 6, 'TDA037')
into ATBM.DEAN values('DA604', 'De An so 4 Phong 6', TO_DATE('2022-6-22','YYYY-MM-DD'), 6, 'TDA036')
into ATBM.DEAN values('DA701', 'De An so 1 Phong 7', TO_DATE('2022-5-22','YYYY-MM-DD'), 7, 'TDA038')
into ATBM.DEAN values('DA702', 'De An so 2 Phong 7', TO_DATE('2022-3-12','YYYY-MM-DD'), 7, 'TDA036')
into ATBM.DEAN values('DA801', 'De An so 1 Phong 8', TO_DATE('2020-4-25','YYYY-MM-DD'), 8, 'TDA038')
into ATBM.DEAN values('DA802', 'De An so 2 Phong 8', TO_DATE('2020-8-23','YYYY-MM-DD'), 8, 'TDA036')
into ATBM.DEAN values('DA803', 'De An so 3 Phong 8', TO_DATE('2021-10-17','YYYY-MM-DD'), 8, 'TDA038')
select 1 from dual;

--------------- END --------------

-- TABLE 5
-- Nhap lieu cho bang ATBM.PHANCONG ---
--------------------------------------
insert all
into PHANCONG values('NV47', 'DA801', TO_DATE('2022-12-6','YYYY-MM-DD'))
into PHANCONG values('NV50', 'DA301', TO_DATE('2020-7-8','YYYY-MM-DD'))
into PHANCONG values('NV50', 'DA302', TO_DATE('2021-5-10','YYYY-MM-DD'))
into PHANCONG values('NV53', 'DA601', TO_DATE('2022-7-2','YYYY-MM-DD'))
into PHANCONG values('NV56', 'DA101', TO_DATE('2021-1-23','YYYY-MM-DD'))
into PHANCONG values('NV59', 'DA401', TO_DATE('2022-9-8','YYYY-MM-DD'))
into PHANCONG values('NV59', 'DA402', TO_DATE('2020-8-4','YYYY-MM-DD'))
into PHANCONG values('NV62', 'DA701', TO_DATE('2020-2-21','YYYY-MM-DD'))
into PHANCONG values('NV62', 'DA702', TO_DATE('2021-4-26','YYYY-MM-DD'))
into PHANCONG values('NV65', 'DA201', TO_DATE('2021-4-5','YYYY-MM-DD'))
into PHANCONG values('NV65', 'DA202', TO_DATE('2021-6-3','YYYY-MM-DD'))
into PHANCONG values('NV68', 'DA501', TO_DATE('2021-12-22','YYYY-MM-DD'))
into PHANCONG values('NV68', 'DA502', TO_DATE('2022-12-26','YYYY-MM-DD'))
into PHANCONG values('NV71', 'DA801', TO_DATE('2022-2-14','YYYY-MM-DD'))
into PHANCONG values('NV74', 'DA301', TO_DATE('2021-6-21','YYYY-MM-DD'))
into PHANCONG values('NV74', 'DA302', TO_DATE('2021-3-6','YYYY-MM-DD'))
into PHANCONG values('NV77', 'DA601', TO_DATE('2020-6-25','YYYY-MM-DD'))
into PHANCONG values('NV77', 'DA602', TO_DATE('2021-12-19','YYYY-MM-DD'))
into PHANCONG values('NV80', 'DA101', TO_DATE('2021-8-9','YYYY-MM-DD'))
into PHANCONG values('NV83', 'DA401', TO_DATE('2021-9-22','YYYY-MM-DD'))
into PHANCONG values('NV83', 'DA402', TO_DATE('2022-9-22','YYYY-MM-DD'))
into PHANCONG values('NV86', 'DA701', TO_DATE('2022-10-16','YYYY-MM-DD'))
into PHANCONG values('NV86', 'DA702', TO_DATE('2020-11-17','YYYY-MM-DD'))
into PHANCONG values('NV89', 'DA201', TO_DATE('2022-7-9','YYYY-MM-DD'))
into PHANCONG values('NV92', 'DA501', TO_DATE('2021-9-11','YYYY-MM-DD'))
into PHANCONG values('NV95', 'DA801', TO_DATE('2020-3-16','YYYY-MM-DD'))
into PHANCONG values('NV95', 'DA802', TO_DATE('2021-7-12','YYYY-MM-DD'))
into PHANCONG values('NV98', 'DA301', TO_DATE('2022-3-7','YYYY-MM-DD'))
into PHANCONG values('NV98', 'DA302', TO_DATE('2021-7-8','YYYY-MM-DD'))
into PHANCONG values('NV101', 'DA601', TO_DATE('2021-9-1','YYYY-MM-DD'))
into PHANCONG values('NV101', 'DA602', TO_DATE('2020-10-10','YYYY-MM-DD'))
into PHANCONG values('NV104', 'DA101', TO_DATE('2020-1-26','YYYY-MM-DD'))
into PHANCONG values('NV104', 'DA102', TO_DATE('2020-6-13','YYYY-MM-DD'))
into PHANCONG values('NV107', 'DA401', TO_DATE('2020-2-14','YYYY-MM-DD'))
into PHANCONG values('NV107', 'DA402', TO_DATE('2020-7-8','YYYY-MM-DD'))
into PHANCONG values('NV110', 'DA701', TO_DATE('2022-10-17','YYYY-MM-DD'))
into PHANCONG values('NV113', 'DA201', TO_DATE('2022-3-9','YYYY-MM-DD'))
into PHANCONG values('NV113', 'DA202', TO_DATE('2022-1-20','YYYY-MM-DD'))
into PHANCONG values('NV116', 'DA501', TO_DATE('2022-2-17','YYYY-MM-DD'))
into PHANCONG values('NV119', 'DA801', TO_DATE('2022-4-14','YYYY-MM-DD'))
into PHANCONG values('NV122', 'DA301', TO_DATE('2020-12-20','YYYY-MM-DD'))
into PHANCONG values('NV125', 'DA601', TO_DATE('2020-4-3','YYYY-MM-DD'))
into PHANCONG values('NV128', 'DA101', TO_DATE('2021-3-27','YYYY-MM-DD'))
into PHANCONG values('NV128', 'DA102', TO_DATE('2022-2-14','YYYY-MM-DD'))
into PHANCONG values('NV131', 'DA401', TO_DATE('2021-5-11','YYYY-MM-DD'))
into PHANCONG values('NV131', 'DA402', TO_DATE('2020-6-18','YYYY-MM-DD'))
into PHANCONG values('NV134', 'DA701', TO_DATE('2021-8-27','YYYY-MM-DD'))
into PHANCONG values('NV134', 'DA702', TO_DATE('2022-11-26','YYYY-MM-DD'))
into PHANCONG values('NV137', 'DA201', TO_DATE('2020-2-14','YYYY-MM-DD'))
into PHANCONG values('NV137', 'DA202', TO_DATE('2021-12-1','YYYY-MM-DD'))
into PHANCONG values('NV140', 'DA501', TO_DATE('2021-5-15','YYYY-MM-DD'))
into PHANCONG values('NV143', 'DA801', TO_DATE('2021-8-28','YYYY-MM-DD'))
into PHANCONG values('NV143', 'DA802', TO_DATE('2020-11-6','YYYY-MM-DD'))
into PHANCONG values('NV146', 'DA301', TO_DATE('2020-7-26','YYYY-MM-DD'))
into PHANCONG values('NV149', 'DA601', TO_DATE('2021-9-2','YYYY-MM-DD'))
into PHANCONG values('NV152', 'DA101', TO_DATE('2022-1-15','YYYY-MM-DD'))
into PHANCONG values('NV152', 'DA102', TO_DATE('2020-11-18','YYYY-MM-DD'))
into PHANCONG values('NV155', 'DA401', TO_DATE('2021-6-3','YYYY-MM-DD'))
into PHANCONG values('NV158', 'DA701', TO_DATE('2020-1-4','YYYY-MM-DD'))
into PHANCONG values('NV158', 'DA702', TO_DATE('2021-3-21','YYYY-MM-DD'))
into PHANCONG values('NV161', 'DA201', TO_DATE('2020-2-24','YYYY-MM-DD'))
into PHANCONG values('NV161', 'DA202', TO_DATE('2020-5-9','YYYY-MM-DD'))
into PHANCONG values('NV164', 'DA501', TO_DATE('2021-1-12','YYYY-MM-DD'))
into PHANCONG values('NV167', 'DA801', TO_DATE('2022-1-10','YYYY-MM-DD'))
into PHANCONG values('NV170', 'DA301', TO_DATE('2020-2-27','YYYY-MM-DD'))
into PHANCONG values('NV173', 'DA601', TO_DATE('2020-6-14','YYYY-MM-DD'))
into PHANCONG values('NV173', 'DA602', TO_DATE('2020-5-2','YYYY-MM-DD'))
into PHANCONG values('NV176', 'DA101', TO_DATE('2022-6-10','YYYY-MM-DD'))
into PHANCONG values('NV179', 'DA401', TO_DATE('2021-11-25','YYYY-MM-DD'))
into PHANCONG values('NV179', 'DA402', TO_DATE('2022-2-22','YYYY-MM-DD'))
into PHANCONG values('NV182', 'DA701', TO_DATE('2020-6-24','YYYY-MM-DD'))
into PHANCONG values('NV182', 'DA702', TO_DATE('2021-11-25','YYYY-MM-DD'))
into PHANCONG values('NV185', 'DA201', TO_DATE('2022-11-3','YYYY-MM-DD'))
into PHANCONG values('NV188', 'DA501', TO_DATE('2020-5-18','YYYY-MM-DD'))
into PHANCONG values('NV188', 'DA502', TO_DATE('2022-10-4','YYYY-MM-DD'))
into PHANCONG values('NV191', 'DA801', TO_DATE('2020-11-9','YYYY-MM-DD'))
into PHANCONG values('NV194', 'DA301', TO_DATE('2022-6-25','YYYY-MM-DD'))
into PHANCONG values('NV194', 'DA302', TO_DATE('2020-5-5','YYYY-MM-DD'))
into PHANCONG values('NV197', 'DA601', TO_DATE('2021-2-2','YYYY-MM-DD'))
into PHANCONG values('NV200', 'DA101', TO_DATE('2021-4-24','YYYY-MM-DD'))
into PHANCONG values('NV203', 'DA401', TO_DATE('2021-6-20','YYYY-MM-DD'))
into PHANCONG values('NV206', 'DA701', TO_DATE('2022-6-2','YYYY-MM-DD'))
into PHANCONG values('NV209', 'DA201', TO_DATE('2020-6-18','YYYY-MM-DD'))
into PHANCONG values('NV212', 'DA501', TO_DATE('2022-1-12','YYYY-MM-DD'))
into PHANCONG values('NV212', 'DA502', TO_DATE('2021-2-4','YYYY-MM-DD'))
into PHANCONG values('NV215', 'DA801', TO_DATE('2021-6-15','YYYY-MM-DD'))
into PHANCONG values('NV218', 'DA301', TO_DATE('2020-10-11','YYYY-MM-DD'))
into PHANCONG values('NV221', 'DA601', TO_DATE('2020-11-14','YYYY-MM-DD'))
into PHANCONG values('NV221', 'DA602', TO_DATE('2020-1-4','YYYY-MM-DD'))
into PHANCONG values('NV224', 'DA101', TO_DATE('2020-2-6','YYYY-MM-DD'))
into PHANCONG values('NV224', 'DA102', TO_DATE('2022-6-26','YYYY-MM-DD'))
into PHANCONG values('NV227', 'DA401', TO_DATE('2021-12-7','YYYY-MM-DD'))
into PHANCONG values('NV230', 'DA701', TO_DATE('2020-8-27','YYYY-MM-DD'))
into PHANCONG values('NV230', 'DA702', TO_DATE('2022-11-4','YYYY-MM-DD'))
into PHANCONG values('NV233', 'DA201', TO_DATE('2022-5-13','YYYY-MM-DD'))
into PHANCONG values('NV236', 'DA501', TO_DATE('2022-11-25','YYYY-MM-DD'))
into PHANCONG values('NV239', 'DA801', TO_DATE('2020-2-5','YYYY-MM-DD'))
into PHANCONG values('NV239', 'DA802', TO_DATE('2021-1-13','YYYY-MM-DD'))
into PHANCONG values('NV242', 'DA301', TO_DATE('2020-9-7','YYYY-MM-DD'))
into PHANCONG values('NV242', 'DA302', TO_DATE('2020-1-19','YYYY-MM-DD'))
into PHANCONG values('NV245', 'DA601', TO_DATE('2022-4-8','YYYY-MM-DD'))
into PHANCONG values('NV245', 'DA602', TO_DATE('2022-10-9','YYYY-MM-DD'))
into PHANCONG values('NV248', 'DA101', TO_DATE('2020-3-9','YYYY-MM-DD'))
into PHANCONG values('NV251', 'DA401', TO_DATE('2021-5-1','YYYY-MM-DD'))
into PHANCONG values('NV251', 'DA402', TO_DATE('2021-6-27','YYYY-MM-DD'))
into PHANCONG values('NV254', 'DA701', TO_DATE('2022-7-12','YYYY-MM-DD'))
into PHANCONG values('NV254', 'DA702', TO_DATE('2022-7-7','YYYY-MM-DD'))
into PHANCONG values('NV257', 'DA201', TO_DATE('2022-4-18','YYYY-MM-DD'))
into PHANCONG values('NV260', 'DA501', TO_DATE('2021-5-13','YYYY-MM-DD'))
into PHANCONG values('NV260', 'DA502', TO_DATE('2022-9-14','YYYY-MM-DD'))
into PHANCONG values('NV263', 'DA801', TO_DATE('2020-4-17','YYYY-MM-DD'))
into PHANCONG values('NV266', 'DA301', TO_DATE('2022-5-22','YYYY-MM-DD'))
into PHANCONG values('NV269', 'DA601', TO_DATE('2020-1-17','YYYY-MM-DD'))
into PHANCONG values('NV272', 'DA101', TO_DATE('2020-5-3','YYYY-MM-DD'))
into PHANCONG values('NV272', 'DA102', TO_DATE('2021-5-12','YYYY-MM-DD'))
into PHANCONG values('NV275', 'DA401', TO_DATE('2021-1-21','YYYY-MM-DD'))
into PHANCONG values('NV278', 'DA701', TO_DATE('2020-1-16','YYYY-MM-DD'))
into PHANCONG values('NV281', 'DA201', TO_DATE('2020-4-24','YYYY-MM-DD'))
into PHANCONG values('NV284', 'DA501', TO_DATE('2021-4-15','YYYY-MM-DD'))
into PHANCONG values('NV284', 'DA502', TO_DATE('2021-3-14','YYYY-MM-DD'))
into PHANCONG values('NV287', 'DA801', TO_DATE('2020-7-2','YYYY-MM-DD'))
into PHANCONG values('NV287', 'DA802', TO_DATE('2021-8-21','YYYY-MM-DD'))
into PHANCONG values('NV290', 'DA301', TO_DATE('2021-8-15','YYYY-MM-DD'))
into PHANCONG values('NV293', 'DA601', TO_DATE('2022-8-19','YYYY-MM-DD'))
into PHANCONG values('NV293', 'DA602', TO_DATE('2022-4-11','YYYY-MM-DD'))
into PHANCONG values('NV296', 'DA101', TO_DATE('2020-12-25','YYYY-MM-DD'))
into PHANCONG values('NV299', 'DA401', TO_DATE('2020-6-24','YYYY-MM-DD'))
into PHANCONG values('NV299', 'DA402', TO_DATE('2020-10-4','YYYY-MM-DD'))
into PHANCONG values('NV302', 'DA701', TO_DATE('2020-2-16','YYYY-MM-DD'))
into PHANCONG values('NV305', 'DA201', TO_DATE('2021-4-6','YYYY-MM-DD'))
into PHANCONG values('NV308', 'DA501', TO_DATE('2022-4-23','YYYY-MM-DD'))
into PHANCONG values('NV308', 'DA502', TO_DATE('2021-3-27','YYYY-MM-DD'))
into PHANCONG values('NV311', 'DA801', TO_DATE('2020-2-5','YYYY-MM-DD'))
into PHANCONG values('NV314', 'DA301', TO_DATE('2020-8-13','YYYY-MM-DD'))
into PHANCONG values('NV317', 'DA601', TO_DATE('2022-9-28','YYYY-MM-DD'))
into PHANCONG values('NV320', 'DA101', TO_DATE('2022-6-11','YYYY-MM-DD'))
into PHANCONG values('NV320', 'DA102', TO_DATE('2021-9-20','YYYY-MM-DD'))
into PHANCONG values('NV323', 'DA401', TO_DATE('2022-10-3','YYYY-MM-DD'))
into PHANCONG values('NV326', 'DA701', TO_DATE('2022-6-25','YYYY-MM-DD'))
into PHANCONG values('NV329', 'DA201', TO_DATE('2020-8-26','YYYY-MM-DD'))
into PHANCONG values('NV332', 'DA501', TO_DATE('2021-7-13','YYYY-MM-DD'))
into PHANCONG values('NV332', 'DA502', TO_DATE('2022-10-15','YYYY-MM-DD'))
into PHANCONG values('NV335', 'DA801', TO_DATE('2021-8-28','YYYY-MM-DD'))
into PHANCONG values('NV335', 'DA802', TO_DATE('2021-11-8','YYYY-MM-DD'))
into PHANCONG values('NV338', 'DA301', TO_DATE('2022-3-10','YYYY-MM-DD'))
into PHANCONG values('NV341', 'DA601', TO_DATE('2021-10-2','YYYY-MM-DD'))
into PHANCONG values('NV341', 'DA602', TO_DATE('2020-12-13','YYYY-MM-DD'))
into PHANCONG values('NV344', 'DA101', TO_DATE('2021-3-25','YYYY-MM-DD'))
select 1 from dual;

--------------- END --------------





-- cap nhat truong phong cho bang ATBM.PHONGBAN ---
--------------------------------------------------
UPDATE ATBM.PHONGBAN set TrPHG = 'TP039' WHERE MaPB = 1;
UPDATE ATBM.PHONGBAN set TrPHG = 'TP040' WHERE MaPB = 2;
UPDATE ATBM.PHONGBAN set TrPHG = 'TP041' WHERE MaPB = 3;
UPDATE ATBM.PHONGBAN set TrPHG = 'TP042' WHERE MaPB = 4;
UPDATE ATBM.PHONGBAN set TrPHG = 'TP043' WHERE MaPB = 5;
UPDATE ATBM.PHONGBAN set TrPHG = 'TP044' WHERE MaPB = 6;
UPDATE ATBM.PHONGBAN set TrPHG = 'TP045' WHERE MaPB = 7;
UPDATE ATBM.PHONGBAN set TrPHG = 'TP046' WHERE MaPB = 8;
-------------------- END -------------------------

/*
select * from ATBM.PHONGBAN;
select * from ATBM.DEAN;
select * from ATBM.NHANVIEN;
select * from ATBM.TAIKHOAN;
select * from ATBM.PHANCONG;

*/