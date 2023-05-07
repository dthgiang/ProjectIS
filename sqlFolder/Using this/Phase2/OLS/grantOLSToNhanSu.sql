
-------------------------
--- Use sys to run
----------------------
GRANT LBAC_DBA TO RL_NhanSu; 
GRANT EXECUTE ON sa_sysdba TO RL_NhanSu; 
GRANT EXECUTE ON to_lbac_data_label TO RL_NhanSu;
-------------------------
--- Use OLS_Admin to run
----------------------
GRANT EXECUTE ON sa_components TO RL_NhanSu; 
GRANT EXECUTE ON sa_user_admin TO RL_NhanSu; 
GRANT EXECUTE ON sa_label_admin TO RL_NhanSu; 
GRANT EXECUTE ON sa_policy_admin TO RL_NhanSu; 
GRANT EXECUTE ON sa_audit_admin TO RL_NhanSu; 
GRANT EXECUTE ON SA_SESSION TO RL_NhanSu;  
grant region_policy_DBA to RL_NhanSu;


grant insert on OLS_ADMIN.THONGBAO to RL_NhanSu;
grant execute on assignDataLabel to RL_NhanSu;
grant execute on assignUserLabel to RL_NhanSu;