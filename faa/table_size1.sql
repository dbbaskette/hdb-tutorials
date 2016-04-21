SELECT 'sample  size', pg_size_pretty(pg_relation_size('faa.sample'));
SELECT 'bad_distro size', pg_size_pretty(pg_relation_size('faa.bad_distro')); 
SELECT 'otp_r size', pg_size_pretty(pg_relation_size('faa.otp_r')); 
