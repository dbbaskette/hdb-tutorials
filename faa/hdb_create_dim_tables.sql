create table faa.d_airports (airport_code text, airport_desc text) DISTRIBUTED RANDOMLY;

create table faa.d_wac (wac smallint, area_desc text) DISTRIBUTED RANDOMLY;

create table faa.d_airlines (airlineid integer, airline_desc text) DISTRIBUTED RANDOMLY;

create table faa.d_cancellation_codes (cancel_code text, cancel_desc text) dDISTRIBUTED RANDOMLY;

create table faa.d_delay_groups (delay_group_code text, delay_group_desc text) DISTRIBUTED RANDOMLY;

create table faa.d_distance_groups (distance_group_code text, distance_group_desc text) DISTRIBUTED RANDOMLY;
