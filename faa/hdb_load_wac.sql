\COPY faa.d_wac FROM '/home/gpadmin/hdb-tutorials/faa/csv/L_WORLD_AREA_CODES.csv'  CSV HEADER LOG ERRORS INTO faa.faa_load_errors KEEP SEGMENT REJECT LIMIT 50 ROWS;
