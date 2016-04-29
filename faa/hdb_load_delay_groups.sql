
create external table faa.d_delay_groups_ext (
delay_group_code text,
delay_group_desc text)
LOCATION ('pxf://sandbox.hortonworks.com:51200/hdb-tutorials/csv/L_ONTIME_DELAY_GROUPS.csv?PROFILE=HdfsTextSimple')
FORMAT 'CSV';

insert into faa.d_delay_groups select * from faa.d_delay_groups_ext;