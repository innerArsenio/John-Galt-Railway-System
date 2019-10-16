select t1.train_name, t1.schedule_id
from schedule t1, schedule t2
where t1.station_name = 'Petropavlovsk'
 and t2.station_name = 'Omsk(RU)'
 and t1.train_name = t2.train_name
 and t1.cost_time < t2.cost_time