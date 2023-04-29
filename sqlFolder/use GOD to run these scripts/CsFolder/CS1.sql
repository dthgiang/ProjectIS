-- cs1

-- Co quyen xem tat ca cac thuoc tinh trên quan he NHANVIEN va PHANCONG lien quan ?en chinh nhan vien do. 
------------
create OR REPLACE view Vw_NhanVienToNhanVien as
    select * from GOD.NhanVien  where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER');
/

create view Vw_PhanCongToNhanVien as
    select * from GOD.PhanCong  where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER');
/

grant select on god.Vw_NhanVienToNhanVien to RL_NhanVien;
grant select on god.Vw_PhanCongToNhanVien to RL_NhanVien;


--Co the sua trên các thu?c tính NGAYSINH, DIACHI, SODT liên quan ??n chính nhân viên ?ó. 
grant update(NGAYSINH) on god.Vw_NhanVienToNhanVien to RL_NhanVien;
grant update(SODT) on god.Vw_NhanVienToNhanVien to RL_NhanVien;
grant update(DIACHI) on god.Vw_NhanVienToNhanVien to RL_NhanVien;
/

--Co the xem d? li?u c?a toàn b? quan h? PHONGBAN và DEAN
grant select on god.PhongBan to RL_NhanVien;
grant select on god.DeAn to RL_NhanVien;
/
