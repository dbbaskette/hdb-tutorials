\COPY faa.d_airports FROM '/home/gpadmin/hdb-tutorials/faa/csv/L_AIRPORTS.csv'  CSV HEADER LOG ERRORS INTO faa.faa_load_errors KEEP SEGMENT REJECT LIMIT 50 ROWS;
