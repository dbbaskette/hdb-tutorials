SELECT (madlib.one_way_anova (
    CASE WHEN carrier = 'US' THEN 1
         WHEN carrier = 'DL' THEN 2
         ELSE NULL
    END,
    arrdelay
)).* FROM faa.otp;

SELECT (madlib.one_way_anova (
    CASE WHEN origin = 'ORD' THEN 1
         WHEN origin = 'ATL' THEN 2
         ELSE NULL
    END,
    arrdelay
)).* FROM faa.otp;

SELECT (madlib.one_way_anova (
    CASE WHEN carrier = 'DL' and origin = 'ATL' THEN 1
         WHEN carrier = 'DL' and origin = 'MSP' THEN 2
         WHEN carrier = 'DL' and origin = 'DTW' THEN 3
         ELSE NULL
    END,
    arrdelay
)).* FROM faa.otp;

SELECT (madlib.one_way_anova (
    CASE WHEN carrier = 'DL' and origin = 'ATL' THEN 1
         WHEN carrier = 'UA' and origin = 'ATL' THEN 2
         ELSE NULL
    END,
    arrdelay
)).* FROM faa.otp;

