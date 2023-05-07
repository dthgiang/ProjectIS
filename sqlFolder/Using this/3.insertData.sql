
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
 insert into ATBM.NHANVIEN values('GD001', 'Vo Hoang Phu', 'Nam', TO_DATE('2006-9-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '09450001', '55555', '1252', 'Giam doc', NULL, null, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('GD002', 'Lai Gia Ngan', 'Nu', TO_DATE('2005-5-5','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '09450002', '55555', '1448', 'Giam doc', NULL, null, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('GD003', 'Vu Van Vy', 'Nam', TO_DATE('2003-11-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '09450003', '55555', '1100', 'Giam doc', NULL, null, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('GD004', 'Bui Song Chung', 'Nam', TO_DATE('2010-6-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '09450004', '55555', '1955', 'Giam doc', NULL, null, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('GD005', 'Au Tung Tan', 'Nu', TO_DATE('2004-10-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '09450005', '55555', '1179', 'Giam doc', NULL, null, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('TC06', 'Nguyen Gia Giang', 'Nam', TO_DATE('2017-3-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '09450006', '11000', '1172', 'Tai chinh', NULL, 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('TC07', 'An Hoang Ngoc Nhi', 'Nam', TO_DATE('2017-4-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '09450007', '11000', '1308', 'Tai chinh', NULL, 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('TC08', '�?ang Song Cau', 'Nu', TO_DATE('2006-12-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '09450008', '11000', '1690', 'Tai chinh', NULL, 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('TC09', 'Vo Tung Tan', 'Nu', TO_DATE('2010-5-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '09450009', '11000', '1530', 'Tai chinh', NULL, 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('TC010', '�?oan Van Vy', 'Nam', TO_DATE('2003-1-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500010', '11000', '1211', 'Tai chinh', NULL, 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NS011', 'Le Van Duy', 'Nam', TO_DATE('2000-1-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500011', '13000', '1658', 'Nhan su', NULL, 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NS012', 'Vo Van Giang', 'Nam', TO_DATE('2012-8-22','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500012', '13000', '1459', 'Nhan su', NULL, 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NS013', 'Gian Tung Quoc', 'Nu', TO_DATE('2014-9-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500013', '13000', '1437', 'Nhan su', NULL, 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NS014', 'Gian Chi Viet', 'Nu', TO_DATE('2021-7-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500014', '13000', '1247', 'Nhan su', NULL, 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NS015', 'Nguyen Gia Minh', 'Nu', TO_DATE('2014-3-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500015', '13000', '1940', 'Nhan su', NULL, 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('QL016', '�?oan Chi Sang', 'Nam', TO_DATE('2017-5-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500016', '25000', '1908', 'Quan li', NULL, 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('QL017', 'Ly Tung Han', 'Nam', TO_DATE('2005-9-25','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500017', '25000', '1929', 'Quan li', NULL, 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('QL018', 'Ly Van Vu', 'Nam', TO_DATE('2009-6-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500018', '25000', '1410', 'Quan li', NULL, 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('QL019', 'Pham Van Quoc', 'Nu', TO_DATE('2019-1-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500019', '25000', '1464', 'Quan li', NULL, 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('QL020', 'Ung Song Nam', 'Nam', TO_DATE('2006-3-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500020', '25000', '1006', 'Quan li', NULL, 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('QL021', '�?ang Van Viet', 'Nam', TO_DATE('2005-9-22','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500021', '25000', '1703', 'Quan li', NULL, 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('QL022', 'Tran Tung Viet', 'Nam', TO_DATE('2001-9-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500022', '25000', '1481', 'Quan li', NULL, 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('QL023', '�?ang Chi Bao', 'Nu', TO_DATE('2007-8-23','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500023', '25000', '1962', 'Quan li', NULL, 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('QL024', 'Ho Hoang Minh', 'Nu', TO_DATE('2018-8-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500024', '25000', '1720', 'Quan li', NULL, 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('QL025', 'Ung Chi Thong', 'Nu', TO_DATE('2006-10-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500025', '25000', '1310', 'Quan li', NULL, 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('QL026', 'Ly Tung Viet', 'Nam', TO_DATE('2013-9-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500026', '25000', '1737', 'Quan li', NULL, 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('QL027', 'An Van Tu', 'Nu', TO_DATE('2000-12-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500027', '25000', '1646', 'Quan li', NULL, 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('QL028', 'Bui Thi Thuong', 'Nam', TO_DATE('2013-7-5','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500028', '25000', '1615', 'Quan li', NULL, 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('QL029', 'Ung Van Cau', 'Nam', TO_DATE('2021-6-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500029', '25000', '1884', 'Quan li', NULL, 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('QL030', 'Nguyen Chi Sang', 'Nam', TO_DATE('2012-6-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500030', '25000', '1658', 'Quan li', NULL, 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('QL031', 'Ung Thi Thong', 'Nu', TO_DATE('2005-1-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500031', '25000', '1848', 'Quan li', NULL, 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('QL032', 'Ly Chi Sang', 'Nam', TO_DATE('2006-6-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500032', '25000', '1520', 'Quan li', NULL, 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('QL033', 'An Hoang Cau', 'Nam', TO_DATE('2007-10-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500033', '25000', '1423', 'Quan li', NULL, 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('QL034', 'Ung Tung Cuc', 'Nam', TO_DATE('2012-4-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500034', '25000', '1485', 'Quan li', NULL, 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('QL035', 'Pham Van Bac', 'Nam', TO_DATE('2018-2-5','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500035', '25000', '1239', 'Quan li', NULL, 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('TDA036', 'Au Tung Han', 'Nu', TO_DATE('2004-5-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500036', '20000', '1981', 'Truong de an', NULL, 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('TDA037', 'Bui Hoang Minh', 'Nu', TO_DATE('2004-10-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500037', '20000', '1464', 'Truong de an', NULL, 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('TDA038', 'Au Gia Bao', 'Nam', TO_DATE('2013-10-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500038', '20000', '1947', 'Truong de an', NULL, 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('TP039', 'Vo Hoang Thong', 'Nam', TO_DATE('2002-5-22','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500039', '22000', '1360', 'Truong phong', NULL, 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('TP040', 'Ho Song Chung', 'Nam', TO_DATE('2003-6-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500040', '22000', '1145', 'Truong phong', NULL, 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('TP041', 'Duong Tung Thien', 'Nam', TO_DATE('2011-1-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500041', '22000', '1383', 'Truong phong', NULL, 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('TP042', 'Vu Chi Tien', 'Nam', TO_DATE('2006-5-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500042', '22000', '2000', 'Truong phong', NULL, 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('TP043', 'An Hoang Tu', 'Nam', TO_DATE('2010-3-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500043', '22000', '1018', 'Truong phong', NULL, 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('TP044', 'Ly Thi �?ang', 'Nam', TO_DATE('2013-2-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500044', '22000', '1740', 'Truong phong', NULL, 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('TP045', 'Tran Hoang Duy', 'Nam', TO_DATE('2007-3-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500045', '22000', '1384', 'Truong phong', NULL, 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('TP046', 'Pham Gia �?an', 'Nu', TO_DATE('2004-8-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500046', '22000', '1685', 'Truong phong', NULL, 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV47', '�?ang Hoang Tuan', 'Nam', TO_DATE('2012-1-23','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500047', '7160', '1756', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV48', 'Pham Tung Tin', 'Nam', TO_DATE('2009-1-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500048', '5760', '1238', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV49', 'Bui Van Phu', 'Nu', TO_DATE('2017-12-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500049', '2268', '1612', 'Nhan vien', 'QL018', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV50', 'An Thi �?ang', 'Nam', TO_DATE('2004-4-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500050', '5966', '1873', 'Nhan vien', 'QL019', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV51', 'Ho Gia Han', 'Nam', TO_DATE('2008-12-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500051', '8635', '1046', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV52', 'Gian Song Duy', 'Nam', TO_DATE('2009-2-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500052', '4473', '1733', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV53', 'Vu Tung Tin', 'Nam', TO_DATE('2002-7-15','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500053', '9945', '1003', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV54', 'Vo Hoang Anh', 'Nam', TO_DATE('2003-4-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500054', '1796', '1459', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV55', 'Vo Gia khanh', 'Nu', TO_DATE('2019-10-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500055', '2640', '1881', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV56', 'Tran Gia Tan', 'Nu', TO_DATE('2012-8-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500056', '8936', '1829', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV57', 'Truong Chi Vu', 'Nam', TO_DATE('2010-10-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500057', '8780', '1254', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV58', 'An Song Vinh', 'Nu', TO_DATE('2002-2-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500058', '8716', '1612', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV59', 'Ly Thi Minh', 'Nam', TO_DATE('2015-11-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500059', '8312', '1282', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV60', '�?oan Thi �?an', 'Nam', TO_DATE('2020-5-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500060', '4599', '1065', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV61', '�?ang Tung Quoc', 'Nam', TO_DATE('2000-2-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500061', '2727', '1595', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV62', 'Duong Tung Tin', 'Nu', TO_DATE('2008-10-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500062', '9465', '1706', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV63', 'Ly Thi �?an', 'Nu', TO_DATE('2020-9-25','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500063', '2190', '1903', 'Nhan vien', 'QL032', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV64', 'Duong Song Nguyet', 'Nu', TO_DATE('2005-9-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500064', '7821', '1422', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV65', 'Truong Van Tiep', 'Nam', TO_DATE('2005-2-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500065', '2734', '1468', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV66', 'Ung Gia khanh', 'Nam', TO_DATE('2002-3-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500066', '8968', '1177', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV67', 'Ho Song Tan', 'Nam', TO_DATE('2003-9-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500067', '7986', '1218', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV68', 'Ung Chi Vu', 'Nu', TO_DATE('2010-8-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500068', '2570', '1157', 'Nhan vien', 'QL017', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV69', 'Pham Tung Phu', 'Nu', TO_DATE('2010-11-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500069', '3118', '1368', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV70', 'Au Song Tu', 'Nam', TO_DATE('2015-4-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500070', '1568', '1748', 'Nhan vien', 'QL019', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV71', 'Tran Van Tu', 'Nu', TO_DATE('2009-4-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500071', '9359', '1026', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV72', '�?ang Thi Chung', 'Nu', TO_DATE('2006-11-26','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500072', '2596', '1589', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV73', 'Le Van Cuc', 'Nam', TO_DATE('2020-5-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500073', '7213', '1309', 'Nhan vien', 'QL022', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV74', 'Au Chi Phu', 'Nam', TO_DATE('2021-11-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500074', '8228', '1029', 'Nhan vien', 'QL023', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV75', 'Vu Song �?uc', 'Nam', TO_DATE('2003-8-25','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500075', '6616', '1020', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV76', 'Vo Van Ngan', 'Nam', TO_DATE('2005-9-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500076', '5562', '1636', 'Nhan vien', 'QL025', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV77', 'Vo Van Tan', 'Nu', TO_DATE('2022-1-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500077', '7564', '1540', 'Nhan vien', 'QL026', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV78', '�?ang Hoang Tien', 'Nam', TO_DATE('2010-6-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500078', '7044', '1027', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV79', 'Vo Song An', 'Nam', TO_DATE('2009-10-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500079', '1205', '1881', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV80', 'Vu Tung Tuan', 'Nam', TO_DATE('2011-9-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500080', '8018', '1419', 'Nhan vien', 'QL029', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV81', 'Ho Hoang Chung', 'Nam', TO_DATE('2020-9-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500081', '9695', '1027', 'Nhan vien', 'QL030', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV82', 'Ho Song May', 'Nu', TO_DATE('2014-12-5','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500082', '3852', '1351', 'Nhan vien', 'QL031', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV83', 'Au Hoang Tiep', 'Nu', TO_DATE('2004-7-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500083', '9072', '1163', 'Nhan vien', 'QL032', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV84', 'Vo Gia Tuan', 'Nam', TO_DATE('2009-11-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500084', '8221', '1820', 'Nhan vien', 'QL033', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV85', 'Truong Thi Nguyet', 'Nu', TO_DATE('2019-12-23','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500085', '6176', '1063', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV86', 'Pham Tung Giang', 'Nu', TO_DATE('2009-11-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500086', '1018', '1311', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV87', 'Truong Thi Cuc', 'Nu', TO_DATE('2001-10-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500087', '2331', '1357', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV88', 'Nguyen Hoang Giang', 'Nam', TO_DATE('2000-9-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500088', '8256', '1763', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV89', 'Ho Van Tu', 'Nu', TO_DATE('2014-4-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500089', '2225', '1151', 'Nhan vien', 'QL018', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV90', 'Ho Thi Bao', 'Nam', TO_DATE('2021-10-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500090', '3475', '1092', 'Nhan vien', 'QL019', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV91', 'Lai Chi Chi', 'Nam', TO_DATE('2018-3-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500091', '3010', '1438', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV92', '�?oan Hoang Minh', 'Nu', TO_DATE('2005-12-5','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500092', '2159', '1894', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV93', 'Truong Van Nam', 'Nu', TO_DATE('2009-5-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500093', '2907', '1987', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV94', 'Ly Hoang Tan', 'Nu', TO_DATE('2008-7-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500094', '2958', '1231', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV95', 'Tran Van Vy', 'Nu', TO_DATE('2020-5-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500095', '5482', '1696', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV96', 'Vu Chi Cau', 'Nu', TO_DATE('2016-11-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500096', '7277', '1451', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV97', 'Duong Chi Han', 'Nam', TO_DATE('2002-12-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500097', '8011', '1864', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV98', 'Ly Tung Tu', 'Nam', TO_DATE('2003-5-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500098', '3715', '1424', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV99', 'Gian Gia �?uc', 'Nam', TO_DATE('2012-12-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '094500099', '9123', '1749', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV100', 'Truong Van Thien', 'Nu', TO_DATE('2016-7-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000100', '3309', '1786', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV101', 'Ly Tung Ngan', 'Nu', TO_DATE('2016-6-23','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000101', '4943', '1809', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV102', 'Le Chi Vinh', 'Nam', TO_DATE('2003-5-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000102', '1845', '1672', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV103', 'Vu Chi An', 'Nu', TO_DATE('2000-7-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000103', '6251', '1831', 'Nhan vien', 'QL032', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV104', 'Tran Gia khanh', 'Nu', TO_DATE('2012-3-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000104', '6602', '1527', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV105', '�?oan Thi Minh', 'Nu', TO_DATE('2001-4-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000105', '7349', '1774', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV106', 'Gian Tung Ngan', 'Nu', TO_DATE('2018-8-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000106', '4670', '1637', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV107', 'Bui Van Vinh', 'Nam', TO_DATE('2007-4-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000107', '7164', '1643', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV108', 'An Van �?ang', 'Nam', TO_DATE('2016-6-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000108', '2840', '1506', 'Nhan vien', 'QL017', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV109', 'Truong Song Tan', 'Nu', TO_DATE('2006-7-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000109', '3018', '1303', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV110', 'Vo Van Ngoc Nhi', 'Nu', TO_DATE('2002-1-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000110', '9272', '1796', 'Nhan vien', 'QL019', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV111', 'Duong Chi Thuong', 'Nu', TO_DATE('2011-8-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000111', '5020', '1288', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV112', 'Gian Song �?an', 'Nam', TO_DATE('2001-6-15','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000112', '1671', '1541', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV113', 'Le Tung An', 'Nu', TO_DATE('2022-7-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000113', '2504', '1878', 'Nhan vien', 'QL022', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV114', 'Au Thi Giang', 'Nu', TO_DATE('2000-9-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000114', '8881', '1966', 'Nhan vien', 'QL023', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV115', '�?oan Tung Minh', 'Nam', TO_DATE('2002-9-25','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000115', '9243', '1813', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV116', 'Le Song �?uc', 'Nu', TO_DATE('2003-11-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000116', '2746', '1833', 'Nhan vien', 'QL025', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV117', 'Nguyen Gia Vu', 'Nu', TO_DATE('2008-3-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000117', '1061', '1329', 'Nhan vien', 'QL026', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV118', 'Pham Van Bao', 'Nu', TO_DATE('2013-11-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000118', '7388', '1391', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV119', 'Ho Chi May', 'Nu', TO_DATE('2020-2-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000119', '1158', '1286', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV120', '�?oan Tung Cau', 'Nu', TO_DATE('2006-12-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000120', '1396', '1154', 'Nhan vien', 'QL029', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV121', 'Vo Gia Phu', 'Nu', TO_DATE('2008-10-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000121', '3755', '1803', 'Nhan vien', 'QL030', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV122', 'Le Song Bac', 'Nu', TO_DATE('2000-9-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000122', '8172', '1293', 'Nhan vien', 'QL031', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV123', 'Nguyen Song Anh', 'Nu', TO_DATE('2016-11-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000123', '8230', '1159', 'Nhan vien', 'QL032', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV124', 'Vu Thi Anh', 'Nu', TO_DATE('2001-3-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000124', '1102', '1101', 'Nhan vien', 'QL033', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV125', 'Ung Thi Vinh', 'Nam', TO_DATE('2016-10-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000125', '8598', '1873', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV126', 'Nguyen Tung Minh', 'Nam', TO_DATE('2002-6-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000126', '5082', '1929', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV127', 'Pham Chi Tien', 'Nu', TO_DATE('2016-8-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000127', '3841', '1052', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV128', 'Ly Chi khanh', 'Nam', TO_DATE('2020-5-22','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000128', '9577', '1283', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV129', 'Au Thi Han', 'Nu', TO_DATE('2008-1-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000129', '9999', '1771', 'Nhan vien', 'QL018', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV130', 'Ung Chi Ngoc Nhi', 'Nam', TO_DATE('2004-11-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000130', '8939', '1008', 'Nhan vien', 'QL019', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV131', '�?ang Hoang Bac', 'Nam', TO_DATE('2010-3-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000131', '2670', '1955', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV132', 'Vo Chi Cau', 'Nu', TO_DATE('2011-6-22','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000132', '6619', '1658', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV133', 'Ung Tung Chi', 'Nu', TO_DATE('2011-1-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000133', '4802', '1563', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV134', 'Vo Chi Quoc', 'Nu', TO_DATE('2012-5-23','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000134', '6231', '1796', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV135', 'Truong Chi Phu', 'Nam', TO_DATE('2004-1-26','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000135', '4076', '1415', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV136', 'Ho Gia Tan', 'Nam', TO_DATE('2009-2-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000136', '6150', '1385', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV137', 'Le Gia Thuong', 'Nam', TO_DATE('2001-9-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000137', '9967', '1428', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV138', 'Lai Hoang Bao', 'Nu', TO_DATE('2005-7-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000138', '4305', '1157', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV139', 'Lai Tung Vy', 'Nu', TO_DATE('2021-4-22','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000139', '7103', '1562', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV140', 'Au Song Quoc', 'Nu', TO_DATE('2001-10-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000140', '9393', '1349', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV141', 'Vu Chi Tiep', 'Nam', TO_DATE('2014-10-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000141', '9006', '1679', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV142', 'Lai Tung Quoc', 'Nam', TO_DATE('2013-12-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000142', '6796', '1524', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV143', 'Tran Song Han', 'Nu', TO_DATE('2006-9-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000143', '5896', '1157', 'Nhan vien', 'QL032', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV144', 'Gian Hoang Quoc', 'Nu', TO_DATE('2002-8-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000144', '4881', '1178', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV145', 'Ho Tung Vinh', 'Nam', TO_DATE('2011-11-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000145', '3666', '1658', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV146', 'Duong Tung �?an', 'Nam', TO_DATE('2020-4-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000146', '9583', '1506', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV147', 'Ly Hoang Tuan', 'Nam', TO_DATE('2008-3-5','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000147', '9478', '1246', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV148', 'Nguyen Gia Tien', 'Nam', TO_DATE('2020-3-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000148', '1435', '1175', 'Nhan vien', 'QL017', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV149', 'Lai Hoang Nam', 'Nam', TO_DATE('2021-8-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000149', '3399', '1528', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV150', 'Vo Song Nam', 'Nu', TO_DATE('2007-8-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000150', '3759', '1334', 'Nhan vien', 'QL019', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV151', '�?oan Chi Thong', 'Nam', TO_DATE('2021-1-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000151', '6885', '1435', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV152', '�?oan Chi Thuong', 'Nam', TO_DATE('2011-6-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000152', '1154', '1120', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV153', '�?ang Gia Ngan', 'Nam', TO_DATE('2014-9-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000153', '9197', '1799', 'Nhan vien', 'QL022', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV154', 'An Tung Viet', 'Nu', TO_DATE('2000-7-25','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000154', '8517', '1631', 'Nhan vien', 'QL023', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV155', 'An Gia khanh', 'Nam', TO_DATE('2001-3-22','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000155', '9002', '1826', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV156', 'Ung Thi May', 'Nu', TO_DATE('2018-11-22','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000156', '8796', '1444', 'Nhan vien', 'QL025', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV157', 'Nguyen Gia Nguyet', 'Nam', TO_DATE('2021-12-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000157', '6215', '1751', 'Nhan vien', 'QL026', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV158', 'Vo Gia Thuong', 'Nam', TO_DATE('2015-7-25','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000158', '3474', '1384', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV159', 'Le Tung �?ang', 'Nu', TO_DATE('2015-3-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000159', '3720', '1188', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV160', 'Tran Chi Bao', 'Nu', TO_DATE('2007-3-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000160', '3349', '1798', 'Nhan vien', 'QL029', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV161', 'Vu Song Chi', 'Nam', TO_DATE('2019-4-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000161', '9787', '1785', 'Nhan vien', 'QL030', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV162', 'An Song �?ang', 'Nu', TO_DATE('2004-8-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000162', '1543', '1556', 'Nhan vien', 'QL031', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV163', 'Le Thi Chung', 'Nam', TO_DATE('2002-7-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000163', '8344', '1505', 'Nhan vien', 'QL032', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV164', 'Ly Tung Thuong', 'Nu', TO_DATE('2020-7-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000164', '3946', '1456', 'Nhan vien', 'QL033', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV165', 'Ho Gia Bao', 'Nam', TO_DATE('2001-7-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000165', '5019', '1784', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV166', 'Truong Gia May', 'Nu', TO_DATE('2004-7-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000166', '7646', '1945', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV167', 'Ung Chi Minh', 'Nam', TO_DATE('2006-4-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000167', '3279', '1550', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV168', 'Bui Song Chung', 'Nam', TO_DATE('2011-8-23','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000168', '9906', '1766', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV169', 'Tran Gia �?uc', 'Nu', TO_DATE('2010-3-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000169', '2626', '1467', 'Nhan vien', 'QL018', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV170', 'Ho Gia �?uc', 'Nam', TO_DATE('2015-3-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000170', '6870', '1830', 'Nhan vien', 'QL019', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV171', 'Lai Gia Thien', 'Nu', TO_DATE('2006-8-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000171', '7999', '1767', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV172', 'Duong Song Minh', 'Nu', TO_DATE('2009-1-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000172', '4866', '1256', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV173', 'Vu Gia An', 'Nam', TO_DATE('2021-2-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000173', '9389', '1406', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV174', 'Gian Gia Thong', 'Nam', TO_DATE('2011-7-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000174', '9873', '1658', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV175', 'Vo Van Chi', 'Nu', TO_DATE('2013-8-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000175', '7507', '1222', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV176', 'Au Van �?uc', 'Nam', TO_DATE('2008-6-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000176', '5646', '1301', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV177', 'Vu Hoang Tiep', 'Nam', TO_DATE('2016-1-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000177', '6679', '1551', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV178', 'Ung Hoang �?ang', 'Nu', TO_DATE('2012-5-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000178', '3508', '1979', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV179', 'Ly Thi Tin', 'Nam', TO_DATE('2012-10-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000179', '7734', '1823', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV180', 'Duong Tung May', 'Nam', TO_DATE('2008-12-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000180', '7455', '1193', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV181', 'Au Van Ngan', 'Nam', TO_DATE('2022-3-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000181', '8614', '1406', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV182', 'Ung Hoang Ngan', 'Nu', TO_DATE('2013-1-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000182', '8966', '1219', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV183', 'Nguyen Song Vu', 'Nu', TO_DATE('2004-4-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000183', '3349', '1062', 'Nhan vien', 'QL032', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV184', 'Ly Van �?ang', 'Nam', TO_DATE('2000-12-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000184', '8837', '1151', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV185', 'An Thi Sang', 'Nu', TO_DATE('2014-9-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000185', '2076', '1304', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV186', 'Ho Hoang Tin', 'Nu', TO_DATE('2021-3-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000186', '1802', '1109', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV187', 'Vo Hoang Phu', 'Nu', TO_DATE('2017-4-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000187', '6544', '1745', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV188', '�?ang Hoang Vy', 'Nam', TO_DATE('2009-7-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000188', '2965', '1790', 'Nhan vien', 'QL017', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV189', 'Ung Gia Anh', 'Nu', TO_DATE('2003-8-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000189', '8697', '1975', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV190', 'Tran Hoang Han', 'Nu', TO_DATE('2008-10-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000190', '5682', '1535', 'Nhan vien', 'QL019', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV191', 'Lai Song Ngan', 'Nam', TO_DATE('2006-11-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000191', '2417', '1231', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV192', 'Duong Hoang Cau', 'Nam', TO_DATE('2021-6-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000192', '6394', '1898', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV193', 'Duong Van Tan', 'Nam', TO_DATE('2011-5-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000193', '9008', '1661', 'Nhan vien', 'QL022', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV194', 'Bui Thi Quoc', 'Nam', TO_DATE('2004-5-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000194', '8417', '1913', 'Nhan vien', 'QL023', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV195', '�?ang Song Vy', 'Nu', TO_DATE('2010-9-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000195', '2518', '1343', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV196', 'Lai Chi Tuan', 'Nu', TO_DATE('2009-7-15','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000196', '1930', '1511', 'Nhan vien', 'QL025', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV197', 'Tran Chi Nam', 'Nu', TO_DATE('2005-8-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000197', '6826', '1584', 'Nhan vien', 'QL026', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV198', 'Ung Gia Tiep', 'Nu', TO_DATE('2017-2-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000198', '8296', '1969', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV199', 'Duong Chi Tuan', 'Nu', TO_DATE('2000-4-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000199', '7676', '1420', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV200', 'Vu Gia Vy', 'Nam', TO_DATE('2014-4-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000200', '3497', '1396', 'Nhan vien', 'QL029', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV201', 'Lai Chi Chi', 'Nam', TO_DATE('2010-10-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000201', '7889', '1389', 'Nhan vien', 'QL030', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV202', 'Tran Tung Tuan', 'Nu', TO_DATE('2015-1-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000202', '2260', '1965', 'Nhan vien', 'QL031', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV203', 'Bui Thi Ngoc Nhi', 'Nam', TO_DATE('2008-7-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000203', '6290', '1821', 'Nhan vien', 'QL032', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV204', 'Vo Tung Tin', 'Nam', TO_DATE('2001-7-5','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000204', '5687', '1077', 'Nhan vien', 'QL033', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV205', 'Bui Van An', 'Nam', TO_DATE('2002-1-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000205', '9266', '1467', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV206', 'Gian Gia �?uc', 'Nam', TO_DATE('2011-4-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000206', '1577', '1188', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV207', 'An Gia Quoc', 'Nu', TO_DATE('2005-11-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000207', '3350', '1472', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV208', 'Bui Thi Duy', 'Nu', TO_DATE('2020-11-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000208', '1393', '1392', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV209', '�?ang Thi Nguyet', 'Nu', TO_DATE('2020-2-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000209', '6192', '1896', 'Nhan vien', 'QL018', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV210', 'Ung Gia khanh', 'Nam', TO_DATE('2014-9-15','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000210', '9517', '1060', 'Nhan vien', 'QL019', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV211', 'Duong Chi �?uc', 'Nu', TO_DATE('2016-8-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000211', '9480', '1417', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV212', 'Duong Hoang Vu', 'Nam', TO_DATE('2019-4-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000212', '2010', '1786', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV213', 'Truong Hoang Ngoc Nhi', 'Nu', TO_DATE('2005-4-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000213', '4631', '1759', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV214', 'Gian Gia Anh', 'Nam', TO_DATE('2011-4-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000214', '9676', '1812', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV215', 'Nguyen Van Nguyet', 'Nam', TO_DATE('2000-10-26','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000215', '7080', '1516', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV216', 'Vo Chi Tu', 'Nam', TO_DATE('2009-6-15','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000216', '3012', '1528', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV217', 'Ly Tung Minh', 'Nam', TO_DATE('2016-8-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000217', '6709', '1131', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV218', 'Duong Thi Vinh', 'Nam', TO_DATE('2008-11-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000218', '8986', '1229', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV219', 'Nguyen Thi Tiep', 'Nam', TO_DATE('2012-2-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000219', '7955', '1359', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV220', 'Gian Van Thuong', 'Nam', TO_DATE('2015-5-26','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000220', '9628', '1931', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV221', 'Pham Chi Tien', 'Nam', TO_DATE('2021-6-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000221', '2262', '1825', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV222', 'Ung Thi Vu', 'Nu', TO_DATE('2002-5-26','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000222', '5765', '1755', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV223', 'Ho Van Duy', 'Nam', TO_DATE('2011-7-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000223', '5098', '1604', 'Nhan vien', 'QL032', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV224', 'An Thi khanh', 'Nu', TO_DATE('2001-10-25','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000224', '1370', '1482', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV225', 'Ung Thi Nam', 'Nam', TO_DATE('2007-9-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000225', '6354', '1105', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV226', 'Duong Thi Thong', 'Nam', TO_DATE('2019-8-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000226', '3314', '1971', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV227', 'Ung Song Tin', 'Nu', TO_DATE('2001-12-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000227', '7119', '1693', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV228', 'Le Chi An', 'Nu', TO_DATE('2022-1-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000228', '3454', '1703', 'Nhan vien', 'QL017', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV229', 'Pham Song Thien', 'Nam', TO_DATE('2004-6-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000229', '9853', '1957', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV230', '�?ang Thi Thuong', 'Nam', TO_DATE('2005-3-15','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000230', '7043', '1536', 'Nhan vien', 'QL019', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV231', 'An Hoang �?uc', 'Nu', TO_DATE('2012-8-15','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000231', '9491', '1669', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV232', 'Vo Van Viet', 'Nam', TO_DATE('2022-10-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000232', '1737', '1793', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV233', 'Bui Thi Duy', 'Nu', TO_DATE('2009-8-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000233', '6952', '1377', 'Nhan vien', 'QL022', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV234', 'Bui Gia Bac', 'Nu', TO_DATE('2004-2-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000234', '8454', '1711', 'Nhan vien', 'QL023', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV235', 'Lai Tung Phu', 'Nam', TO_DATE('2003-11-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000235', '4052', '1488', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV236', 'Bui Tung May', 'Nam', TO_DATE('2007-3-23','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000236', '5106', '1452', 'Nhan vien', 'QL025', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV237', 'Ho Chi Chi', 'Nu', TO_DATE('2006-8-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000237', '4881', '1270', 'Nhan vien', 'QL026', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV238', 'Pham Gia Phu', 'Nu', TO_DATE('2009-4-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000238', '4035', '1097', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV239', 'Le Hoang Vy', 'Nam', TO_DATE('2018-11-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000239', '1364', '1759', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV240', 'Vu Gia Tan', 'Nam', TO_DATE('2004-9-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000240', '5317', '1354', 'Nhan vien', 'QL029', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV241', 'Pham Thi Phu', 'Nu', TO_DATE('2008-4-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000241', '5214', '1316', 'Nhan vien', 'QL030', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV242', 'Ho Van Thuong', 'Nu', TO_DATE('2015-5-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000242', '4506', '1443', 'Nhan vien', 'QL031', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV243', 'Lai Hoang Vu', 'Nam', TO_DATE('2022-8-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000243', '2213', '1799', 'Nhan vien', 'QL032', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV244', 'Vo Song Bao', 'Nam', TO_DATE('2008-9-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000244', '3653', '1540', 'Nhan vien', 'QL033', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV245', 'Duong Gia Cuc', 'Nam', TO_DATE('2003-7-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000245', '5895', '1530', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV246', 'Ung Hoang May', 'Nu', TO_DATE('2002-5-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000246', '4664', '1441', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV247', 'Le Tung Tin', 'Nam', TO_DATE('2003-6-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000247', '3326', '1926', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV248', 'Nguyen Van May', 'Nam', TO_DATE('2020-9-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000248', '4131', '1473', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV249', 'Lai Song Ngoc Nhi', 'Nu', TO_DATE('2021-4-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000249', '2116', '1969', 'Nhan vien', 'QL018', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV250', 'Lai Chi Nguyet', 'Nam', TO_DATE('2014-11-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000250', '8961', '1368', 'Nhan vien', 'QL019', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV251', 'Vu Song May', 'Nu', TO_DATE('2015-2-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000251', '2355', '1269', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV252', 'Vo Hoang �?ang', 'Nam', TO_DATE('2011-5-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000252', '5974', '1244', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV253', 'Vu Van Tin', 'Nu', TO_DATE('2006-7-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000253', '6332', '1452', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV254', 'An Gia Quoc', 'Nu', TO_DATE('2003-4-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000254', '7512', '1387', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV255', 'Pham Hoang Ngoc Nhi', 'Nam', TO_DATE('2006-1-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000255', '8420', '1533', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV256', 'Truong Hoang �?ang', 'Nam', TO_DATE('2011-2-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000256', '2516', '1670', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV257', 'Ho Thi Vu', 'Nu', TO_DATE('2017-2-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000257', '3110', '1260', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV258', 'Au Thi Tin', 'Nu', TO_DATE('2014-9-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000258', '2314', '1493', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV259', 'Gian Tung Thong', 'Nu', TO_DATE('2002-6-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000259', '3102', '1488', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV260', 'Bui Chi Anh', 'Nu', TO_DATE('2016-2-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000260', '8413', '1202', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV261', 'Lai Song khanh', 'Nu', TO_DATE('2016-4-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000261', '7732', '1926', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV262', 'Bui Song Nguyet', 'Nu', TO_DATE('2014-4-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000262', '7384', '1771', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV263', 'Le Hoang An', 'Nu', TO_DATE('2012-12-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000263', '1661', '1267', 'Nhan vien', 'QL032', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV264', 'Ung Gia Vy', 'Nu', TO_DATE('2022-10-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000264', '8088', '1963', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV265', 'Ho Hoang Vu', 'Nu', TO_DATE('2017-9-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000265', '4275', '1128', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV266', 'Le Song Sang', 'Nu', TO_DATE('2017-10-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000266', '2104', '1591', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV267', 'Lai Song Sang', 'Nu', TO_DATE('2018-4-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000267', '6682', '1707', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV268', 'An Hoang Cuc', 'Nu', TO_DATE('2017-4-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000268', '6815', '1657', 'Nhan vien', 'QL017', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV269', 'Gian Tung �?an', 'Nam', TO_DATE('2010-12-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000269', '1946', '1909', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV270', '�?oan Hoang Sang', 'Nu', TO_DATE('2019-7-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000270', '1781', '1899', 'Nhan vien', 'QL019', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV271', 'Au Tung khanh', 'Nam', TO_DATE('2005-2-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000271', '2457', '1031', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV272', 'Ung Hoang Cau', 'Nu', TO_DATE('2007-9-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000272', '8658', '1749', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV273', 'Gian Gia �?ang', 'Nu', TO_DATE('2006-1-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000273', '8299', '1587', 'Nhan vien', 'QL022', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV274', 'Ly Song khanh', 'Nu', TO_DATE('2000-1-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000274', '2024', '1527', 'Nhan vien', 'QL023', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV275', 'Pham Chi Bao', 'Nam', TO_DATE('2014-7-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000275', '9957', '1101', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV276', 'An Thi Nam', 'Nam', TO_DATE('2020-11-26','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000276', '6814', '1575', 'Nhan vien', 'QL025', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV277', 'Tran Chi Ngan', 'Nu', TO_DATE('2017-5-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000277', '9722', '1619', 'Nhan vien', 'QL026', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV278', 'Truong Song Ngan', 'Nam', TO_DATE('2022-6-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000278', '8981', '1636', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV279', 'Ly Thi Minh', 'Nu', TO_DATE('2005-1-8','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000279', '3225', '1586', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV280', '�?ang Van khanh', 'Nam', TO_DATE('2016-4-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000280', '2414', '1781', 'Nhan vien', 'QL029', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV281', 'Ho Thi Thien', 'Nam', TO_DATE('2018-8-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000281', '7762', '1115', 'Nhan vien', 'QL030', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV282', 'An Hoang Tan', 'Nam', TO_DATE('2000-9-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000282', '4822', '1628', 'Nhan vien', 'QL031', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV283', '�?oan Tung Vy', 'Nu', TO_DATE('2018-11-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000283', '7539', '1166', 'Nhan vien', 'QL032', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV284', 'An Gia �?an', 'Nu', TO_DATE('2002-9-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000284', '9378', '1302', 'Nhan vien', 'QL033', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV285', 'Ly Thi Chi', 'Nam', TO_DATE('2000-12-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000285', '8090', '1843', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV286', 'Au Hoang Thong', 'Nam', TO_DATE('2013-3-1','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000286', '1180', '1026', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV287', 'Pham Thi Minh', 'Nu', TO_DATE('2012-4-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000287', '4109', '1714', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV288', 'Pham Van Han', 'Nam', TO_DATE('2013-10-26','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000288', '8083', '1515', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV289', 'Le Hoang Duy', 'Nam', TO_DATE('2001-3-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000289', '5390', '1786', 'Nhan vien', 'QL018', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV290', 'Gian Chi Anh', 'Nu', TO_DATE('2018-8-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000290', '1893', '1820', 'Nhan vien', 'QL019', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV291', 'Lai Tung Tin', 'Nam', TO_DATE('2002-2-20','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000291', '7912', '1742', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV292', 'Lai Gia Vu', 'Nam', TO_DATE('2017-1-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000292', '8363', '1083', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV293', 'Vu Tung Minh', 'Nam', TO_DATE('2006-5-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000293', '1810', '1200', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV294', 'Ung Tung Chi', 'Nu', TO_DATE('2013-6-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000294', '8680', '1658', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV295', 'Vu Gia Chi', 'Nu', TO_DATE('2000-1-15','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000295', '9990', '1810', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV296', 'Le Gia Tan', 'Nu', TO_DATE('2017-9-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000296', '8646', '1021', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV297', 'Pham Thi Tin', 'Nam', TO_DATE('2021-7-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000297', '1398', '1743', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV298', 'Ung Van Quoc', 'Nu', TO_DATE('2004-9-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000298', '5725', '1928', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV299', 'Gian Hoang Tuan', 'Nam', TO_DATE('2021-8-15','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000299', '4346', '1023', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV300', 'Duong Thi Tu', 'Nu', TO_DATE('2007-4-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000300', '7412', '1820', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV301', '�?ang Chi Bao', 'Nu', TO_DATE('2019-12-21','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000301', '1043', '1737', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV302', 'Ho Van Cau', 'Nam', TO_DATE('2006-11-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000302', '5090', '1409', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV303', 'Bui Chi Cau', 'Nu', TO_DATE('2010-7-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000303', '1158', '1470', 'Nhan vien', 'QL032', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV304', 'Bui Song Chung', 'Nam', TO_DATE('2010-1-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000304', '4758', '1456', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV305', 'Au Tung Duy', 'Nam', TO_DATE('2010-8-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000305', '7565', '1972', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV306', '�?oan Thi Ngan', 'Nam', TO_DATE('2007-10-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000306', '2842', '1087', 'Nhan vien', 'QL035', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV307', 'An Chi Cau', 'Nam', TO_DATE('2011-2-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000307', '1943', '1135', 'Nhan vien', 'QL016', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV308', 'Pham Song Vinh', 'Nu', TO_DATE('2020-6-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000308', '4034', '1155', 'Nhan vien', 'QL017', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV309', 'An Gia Vu', 'Nam', TO_DATE('2015-11-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000309', '2054', '1055', 'Nhan vien', 'QL018', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV310', 'Vu Van Nam', 'Nam', TO_DATE('2015-6-4','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000310', '5194', '1196', 'Nhan vien', 'QL019', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV311', 'Duong Van Giang', 'Nu', TO_DATE('2007-6-10','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000311', '8054', '1242', 'Nhan vien', 'QL020', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV312', 'Tran Hoang �?an', 'Nam', TO_DATE('2008-6-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000312', '5355', '1899', 'Nhan vien', 'QL021', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV313', 'Gian Chi Thong', 'Nam', TO_DATE('2007-11-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000313', '1906', '1461', 'Nhan vien', 'QL022', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV314', 'An Chi Sang', 'Nu', TO_DATE('2009-3-23','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000314', '5966', '1630', 'Nhan vien', 'QL023', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV315', 'Vo Van Tu', 'Nam', TO_DATE('2003-12-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000315', '7868', '1417', 'Nhan vien', 'QL024', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV316', 'Duong Tung Chi', 'Nam', TO_DATE('2000-3-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000316', '9107', '1142', 'Nhan vien', 'QL025', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV317', 'Truong Tung Nam', 'Nam', TO_DATE('2002-7-5','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000317', '2531', '1760', 'Nhan vien', 'QL026', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV318', 'Ly Hoang Thuong', 'Nam', TO_DATE('2010-4-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000318', '8925', '1408', 'Nhan vien', 'QL027', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV319', 'Pham Chi Thong', 'Nu', TO_DATE('2021-4-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000319', '5882', '1907', 'Nhan vien', 'QL028', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV320', 'Nguyen Thi Viet', 'Nu', TO_DATE('2005-7-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000320', '6088', '1437', 'Nhan vien', 'QL029', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV321', 'Lai Van Phu', 'Nam', TO_DATE('2004-5-25','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000321', '6801', '1673', 'Nhan vien', 'QL030', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV322', '�?ang Hoang �?an', 'Nam', TO_DATE('2014-8-28','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000322', '4566', '1578', 'Nhan vien', 'QL031', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV323', 'Bui Gia �?uc', 'Nam', TO_DATE('2001-9-19','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000323', '7236', '1055', 'Nhan vien', 'QL032', 4, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV324', 'Ly Hoang Ngan', 'Nu', TO_DATE('2003-3-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000324', '8930', '1838', 'Nhan vien', 'QL033', 5, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV325', 'Duong Song Vy', 'Nam', TO_DATE('2018-9-9','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000325', '3483', '1759', 'Nhan vien', 'QL034', 6, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV326', 'Tran Thi Phu', 'Nu', TO_DATE('2006-6-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000326', '3795', '1572', 'Nhan vien', 'QL035', 7, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV327', 'Au Hoang Tiep', 'Nam', TO_DATE('2013-12-13','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000327', '2767', '2000', 'Nhan vien', 'QL016', 8, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV328', '�?oan Thi �?ang', 'Nam', TO_DATE('2012-3-14','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000328', '3831', '1355', 'Nhan vien', 'QL017', 1, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV329', 'Vo Tung Ngan', 'Nu', TO_DATE('2022-10-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000329', '3217', '1747', 'Nhan vien', 'QL018', 2, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV330', 'Tran Thi Thien', 'Nam', TO_DATE('2016-2-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000330', '5631', '1124', 'Nhan vien', 'QL019', 3, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV331', 'Bui Gia Thong', 'Nu', TO_DATE('2002-9-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000331', '6216', '1338', 'Nhan vien', 'QL020', 4, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV332', 'Nguyen Gia Vinh', 'Nu', TO_DATE('2008-7-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000332', '1067', '1003', 'Nhan vien', 'QL021', 5, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV333', 'Nguyen Van Bao', 'Nam', TO_DATE('2012-12-27','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000333', '9460', '1276', 'Nhan vien', 'QL022', 6, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV334', 'Duong Thi Tan', 'Nam', TO_DATE('2022-3-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000334', '6328', '1180', 'Nhan vien', 'QL023', 7, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV335', '�?ang Song Nam', 'Nam', TO_DATE('2019-8-2','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000335', '3151', '1920', 'Nhan vien', 'QL024', 8, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV336', 'Au Gia Ngoc Nhi', 'Nu', TO_DATE('2012-10-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000336', '9320', '1012', 'Nhan vien', 'QL025', 1, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV337', 'Vo Song Bac', 'Nu', TO_DATE('2020-11-11','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000337', '3774', '1775', 'Nhan vien', 'QL026', 2, '123', 'Mien Bac', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV338', 'An Tung Viet', 'Nam', TO_DATE('2011-10-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000338', '6126', '1590', 'Nhan vien', 'QL027', 3, '123', 'Mien Nam', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV339', 'Duong Song Anh', 'Nam', TO_DATE('2018-8-16','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000339', '1276', '1126', 'Nhan vien', 'QL028', 4, '123', 'Mien Nam', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV340', 'Nguyen Gia Anh', 'Nu', TO_DATE('2010-1-24','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000340', '2676', '1839', 'Nhan vien', 'QL029', 5, '123', 'Mien Nam', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV341', 'Ho Tung Tan', 'Nam', TO_DATE('2013-3-17','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000341', '7254', '1766', 'Nhan vien', 'QL030', 6, '123', 'Mien Trung', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV342', 'Lai Gia Tuan', 'Nu', TO_DATE('2010-8-12','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000342', '6122', '1495', 'Nhan vien', 'QL031', 7, '123', 'Mien Trung', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV343', 'Duong Song khanh', 'Nu', TO_DATE('2004-12-3','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000343', '9286', '1840', 'Nhan vien', 'QL032', 8, '123', 'Mien Trung', 'San Xuat');/
 insert into ATBM.NHANVIEN values('NV344', 'Pham Thi Phu', 'Nu', TO_DATE('2022-12-18','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000344', '5938', '1826', 'Nhan vien', 'QL033', 1, '123', 'Mien Bac', 'Gia Cong');/
 insert into ATBM.NHANVIEN values('NV345', '�?oan Tung Nguyet', 'Nam', TO_DATE('2009-5-7','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000345', '3501', '1701', 'Nhan vien', 'QL034', 2, '123', 'Mien Bac', 'Mua Ban');/
 insert into ATBM.NHANVIEN values('NV346', 'Nguyen Thi Nguyet', 'Nu', TO_DATE('2020-6-6','YYYY-MM-DD'), '227 Nguyen Van Cu, Quan 1, TP. HCM', '0945000346', '3213', '1660', 'Admin', 'QL035', 3, '123', 'Mien Nam', 'San Xuat');/
 insert into NHANVIEN values('NV000', 'An Chi Tu', 'Nu', TO_DATE('2017-4-4','YYYY-MM-DD'), '227 Nguyễn Văn Cừ, Quận 5, TP. Hồ Chí Minh', '0945000347', '22000', '10000', 'Admin', null, null, '123', null, null);/
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