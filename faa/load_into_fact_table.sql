insert into faa.otp_r select
l.Flt_Year,
l.Flt_Quarter,
l.Flt_Month,
l.Flt_DayofMonth,
l.Flt_DayOfWeek,
l.FlightDate,
l.UniqueCarrier,
l.AirlineID,
l.Carrier,
l.FlightNum,
l.Origin, -- airport code
l.OriginCityName,
l.OriginState,
l.OriginStateName,
l.Dest,
l.DestCityName,
l.DestState,
l.DestStateName,
l.CRSDepTime,
l.DepTime,
l.DepDelay::float8, -- cast from numeric
l.DepDelayMinutes::float8, -- cast from numeric
l.DepartureDelayGroups::smallint,
l.TaxiOut::integer,
l.WheelsOff,
l.WheelsOn,
l.TaxiIn::smallint,
l.CRSArrTime,
l.ArrTime,
l.ArrDelay::float8, -- cast from numeric
l.ArrDelayMinutes::float8, -- cast from numeric
l.ArrivalDelayGroups::smallint,
l.Cancelled::smallint, -- cast from numeric
l.CancellationCode,
l.Diverted::smallint, -- cast from numeric
l.CRSElapsedTime::integer, -- cast from numeric
l.ActualElapsedTime::float8, -- cast from numeric
l.AirTime::float8, -- cast from numeric
l.Flights::smallint, -- cast from numeric, always one
l.Distance::float8, -- cast from numeric
l.DistanceGroup,
coalesce(l.CarrierDelay::smallint, 0), -- cast from numeric
coalesce(l.WeatherDelay::smallint, 0), -- cast from numeric
coalesce(l.NASDelay::smallint, 0), -- cast from numeric
coalesce(l.SecurityDelay::smallint, 0), -- cast from numeric
coalesce(l.LateAircraftDelay::smallint, 0) -- cast from numeric
from faa.faa_otp_load l;

insert into faa.otp_c select * from faa.otp_r;

