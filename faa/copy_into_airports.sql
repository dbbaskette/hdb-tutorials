\COPY faa.d_airports FROM 'L_AIRPORTS.csv'  CSV HEADER LOG ERRORS INTO faa.faa_load_errors KEEP SEGMENT REJECT LIMIT 50 ROWS;