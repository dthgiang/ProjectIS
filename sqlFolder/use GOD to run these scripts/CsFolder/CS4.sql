ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

GRANT SELECT ON god.NHANVIEN TO RL_TAICHINH;
GRANT SELECT ON god.phancong TO RL_TAICHINH;
GRANT UPDATE (LUONG, PHUCAP) ON god.NHANVIEN TO RL_TAICHINH;

SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'RL_TAICHINH';

UPDATE GOD.NHANVIEN SET LUONG = 10000 WHERE MANV='TC09';


