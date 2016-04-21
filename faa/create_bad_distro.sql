drop table if exists faa.bad_distro;
create table faa.bad_distro (LIKE faa.otp_r)
distributed by (diverted); 
