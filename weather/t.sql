-- select * 
-- from reports 
--     join stations on reports.station_id = stations.id
-- order by tempf desc
-- limit 1;

-- select * 
-- from reports 
--     join stations on reports.station_id = stations.id
-- order by tempf asc
-- limit 1;

-- select stations.name, max(tempf), min(tempf)
-- from stations 
--     join reports on stations.id = reports.station_id
-- group by stations.name

select stations.name, reports.time::date, avg(wind_speed)
from reports
  join stations on reports.station_id=stations.id
group by 1, 2
order by 1, 2;

