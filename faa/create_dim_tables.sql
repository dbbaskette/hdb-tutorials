create table faa.d_airports (airport_code text, airport_desc text) distributed by (airport_code);

create table faa.d_wac (wac smallint, area_desc text) distributed by (wac);

create table faa.d_airlines (airlineid integer, airline_desc text) distributed by (airlineid);

create table faa.d_cancellation_codes (cancel_code text, cancel_desc text) distributed by (cancel_code);

create table faa.d_delay_groups (delay_group_code text, delay_group_desc text) distributed by (delay_group_code);

create table faa.d_distance_groups (distance_group_code text, distance_group_desc text) distributed by (distance_group_code);
