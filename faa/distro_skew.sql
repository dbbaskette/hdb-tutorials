SELECT  gp_segment_id, count(*) from sample GROUP BY gp_segment_id ORDER BY gp_segment_id;

SELECT  gp_segment_id, count(*) from bad_distro GROUP BY gp_segment_id ORDER BY gp_segment_id;

