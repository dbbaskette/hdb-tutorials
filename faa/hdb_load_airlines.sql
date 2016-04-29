\COPY faa.d_airlines FROM '/home/gpadmin/hdb-tutorials/faa/csv/L_AIRLINE_ID.csv'  CSV HEADER LOG ERRORS INTO faa.faa_load_errors KEEP SEGMENT REJECT LIMIT 50 ROWS;
