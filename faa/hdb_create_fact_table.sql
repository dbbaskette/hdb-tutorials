create table faa.otp  (
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
TaxiOut float, -- cast from numeric
WheelsOff text,
WheelsOn text,
TaxiIn float, -- cast from numeric
CRSArrTime text,
ArrTime integer,
ArrDelay float8, -- cast from numeric
ArrDelayMinutes float8, -- cast from numeric
ArrivalDelayGroups smallint, -- FK to d_delay_groups
Cancelled float, -- cast from numeric
CancellationCode text, -- FK to d_cancellation_codes
Diverted float, -- cast from numeric
CRSElapsedTime float, -- cast from numeric
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
WITH (appendonly=true,orientation=parquet) DISTRIBUTED RANDOMLY PARTITION BY RANGE(FlightDate)
(
PARTITION mth START ('2009-06-01'::date) END ('2010-10-31'::date) EVERY ('1 mon'::interval)
)

;
