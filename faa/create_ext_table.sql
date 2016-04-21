CREATE EXTERNAL TABLE faa.ext_load_otp
(LIKE faa.faa_otp_load)
LOCATION ('gpfdist://localhost:8081/otp*.gz')
FORMAT 'csv' (header)
LOG ERRORS INTO faa.faa_load_errors SEGMENT REJECT LIMIT 50000 rows;

