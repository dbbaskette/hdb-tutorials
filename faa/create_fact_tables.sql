create table faa.otp_r  (
Flt_Year smallint,
Flt_Quarter smallint,
Flt_Month smallint,
Flt_DayofMonth smallint,
Flt_DayOfWeek smallint,
FlightDate date,
UniqueCarrier text,
AirlineID integer, -- FK to d_airlines
Carrier text,
FlightNum text,
Origin text, -- airport code, FK to d_airports
OriginCityName text,
OriginState text,
OriginStateName text,
Dest text, -- airport code, FK to d_airports
DestCityName text,
DestState text,
DestStateName text,
CRSDepTime text,
DepTime integer,
DepDelay float8, -- cast from numeric
DepDelayMinutes float8, -- cast from numeric
DepartureDelayGroups smallint, --FK to d_delay_groups
TaxiOut smallint, -- cast from numeric
WheelsOff text,
WheelsOn text,
TaxiIn smallint, -- cast from numeric
CRSArrTime text,
ArrTime text,
ArrDelay float8, -- cast from numeric
ArrDelayMinutes float8, -- cast from numeric
ArrivalDelayGroups smallint, -- FK to d_delay_groups
Cancelled smallint, -- cast from numeric
CancellationCode text, -- FK to d_cancellation_codes
Diverted smallint, -- cast from numeric
CRSElapsedTime integer, -- cast from numeric
ActualElapsedTime float8, -- cast from numeric
AirTime float8, -- cast from numeric
Flights smallint, -- cast from numeric, always one
Distance float8, -- cast from numeric
DistanceGroup smallint, -- FK to d_distance_groups
CarrierDelay smallint, -- cast from numeric
WeatherDelay smallint, -- cast from numeric
NASDelay smallint, -- cast from numeric
SecurityDelay smallint, -- cast from numeric
LateAircraftDelay smallint -- cast from numeric
) 
distributed by (UniqueCarrier, FlightNum);

-- then a column-based, partitioned version

create table faa.otp_c (LIKE faa.otp_r)
WITH (appendonly=true, orientation=column) distributed by (UniqueCarrier, FlightNum) PARTITION BY RANGE(FlightDate) 
(
PARTITION mth START ('2009-06-01'::date) END ('2010-10-31'::date) EVERY ('1 mon'::interval)
);
