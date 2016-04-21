drop table if exists sample;
set search_path to faa, public, pg_catalog, gp_toolkit;
create table sample (id serial, big bigint, wee smallint, stuff text) distributed by (id) ;
insert into sample (big) values (generate_series(1,1000000));
update sample set wee = 0; 
update sample set wee = 1 where mod(id,20)=1;
update sample set stuff = substr('abcdefghijklmnopqrstuvwxyz',1,mod(wee,26));

