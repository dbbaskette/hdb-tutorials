select carrier, avg(arrdelayminutes), stddev(arrdelayminutes),count(*)  from faa.otp_c where carrier = 'US' or carrier = 'DL' group by carrier; 
select origin, avg(arrdelayminutes), stddev(arrdelayminutes), count(*) from faa.otp_c where origin = 'ORD' or origin = 'ATL' group by origin;
select origin, avg (arrdelayminutes), stddev(arrdelayminutes), count(*)  from faa.otp_c where carrier = 'DL' and origin in ('ATL', 'MSP', 'DTW') group by origin;
select carrier, avg(arrdelayminutes), stddev(arrdelayminutes) , count(*) from faa.otp_c where carrier in ('DL', 'UA') and origin = 'ATL' group by carrier;
