-- cs1

-- Co quyen xem tat ca cac thuoc tinh tr�n quan he NHANVIEN va PHANCONG lien quan ?en chinh nhan vien do. 
------------
create OR REPLACE view Vw_NhanVienToNhanVien as
    select * from GOD.NhanVien  where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER');
/

create view Vw_PhanCongToNhanVien as
    select * from GOD.PhanCong  where MaNV = SYS_CONTEXT('USERENV', 'SESSION_USER');
/

grant select on god.Vw_NhanVienToNhanVien to RL_NhanVien;
grant select on god.Vw_PhanCongToNhanVien to RL_NhanVien;


--Co the sua tr�n c�c thu?c t�nh NGAYSINH, DIACHI, SODT li�n quan ??n ch�nh nh�n vi�n ?�. 
grant update(NGAYSINH) on god.Vw_NhanVienToNhanVien to RL_NhanVien;
grant update(SODT) on god.Vw_NhanVienToNhanVien to RL_NhanVien;
grant update(DIACHI) on god.Vw_NhanVienToNhanVien to RL_NhanVien;
/

--Co the xem d? li?u c?a to�n b? quan h? PHONGBAN v� DEAN
grant select on god.PhongBan to RL_NhanVien;
grant select on god.DeAn to RL_NhanVien;
/
