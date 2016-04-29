
create external table faa.d_distance_groups_ext (
istance_group_code text,
distance_group_desc text)
LOCATION ('pxf://sandbox.hortonworks.com:51200/hdb-tutorials/csv/L_DISTANCE_GROUP_250.csv?PROFILE=HdfsTextSimple')
FORMAT 'CSV';

insert into faa.d_distance_groups select * from faa.d_distance_groups_ext;