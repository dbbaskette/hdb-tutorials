\COPY faa.d_delay_groups FROM 'L_ONTIME_DELAY_GROUPS.csv'  CSV HEADER LOG ERRORS INTO faa.faa_load_errors KEEP SEGMENT REJECT LIMIT 50 ROWS;
