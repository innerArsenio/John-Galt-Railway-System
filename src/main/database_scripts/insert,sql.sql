#Stations with corresponding names In total: 51 stations
insert into station (name) values ('Kostanay');
insert into station (name) values ('Petropavlovsk');
insert into station (name) values ('Yekaterinburg(RU)');
insert into station (name) values ('Omsk(RU)');
insert into station (name) values ('Novosibirsk(RU)');
insert into station (name) values ('Kokshetau');
insert into station (name) values ('Borovoe');
insert into station (name) values ('Astana');
insert into station (name) values ('Ekibastuz');
insert into station (name) values ('Pavlodar');
insert into station (name) values ('Kurchatov');
insert into station (name) values ('Semey');
insert into station (name) values ('Barnaul(RU)');
insert into station (name) values ('Oskemen');
insert into station (name) values ('Charsk');
insert into station (name) values ('Ayagoz');
insert into station (name) values ('Aktogay');
insert into station (name) values ('Balkhash');
insert into station (name) values ('Moiynty');
insert into station (name) values ('Zharyk');
insert into station (name) values ('Karaganda');
insert into station (name) values ('Zhezkazgan');
insert into station (name) values ('Aralsk');
insert into station (name) values ('Shalkar');
insert into station (name) values ('Kandyagash');
insert into station (name) values ('Aqtobe');
insert into station (name) values ('Uralsk');
insert into station (name) values ('Saratov(RU)');
insert into station (name) values ('Makat');
insert into station (name) values ('Atyrau');
insert into station (name) values ('Astrakhan(RU)');
insert into station (name) values ('Volgograd(RU)');
insert into station (name) values ('Beyneu');
insert into station (name) values ('Aqtau');
insert into station (name) values ('Kungrad(UZ)');
insert into station (name) values ('Nukus(UZ)');
insert into station (name) values ('Baikonur');
insert into station (name) values ('Kyzylorda');
insert into station (name) values ('Turkestan');
insert into station (name) values ('Shymkent');
insert into station (name) values ('Tashkent(UZ)');
insert into station (name) values ('Taraz');
insert into station (name) values ('Shu');
insert into station (name) values ('Almaty');
insert into station (name) values ('Kapchagatai');
insert into station (name) values ('Saryozek');
insert into station (name) values ('Ushtobe');
insert into station (name) values ('Khorgos(CH)');
insert into station (name) values ('Urumqi(CH)');
insert into station (name) values ('Taldykorgan');
insert into station (name) values ('Sary-Shagan');




#Trains with their corresponding departure times from the start station...In total: __ trains 
insert into train (name, departure_time ) values ('G100', '12:10:00'); #exists
insert into train (name, departure_time ) values ('G100B', '19:10:00'); #exists
insert into train (name, departure_time ) values ('G101', '09:00:00');
insert into train (name, departure_time ) values ('G101B', '18:00:00');
insert into train (name, departure_time ) values ('G102', '06:15:00');
insert into train (name, departure_time ) values ('G102B', '06:15:00');
insert into train (name, departure_time ) values ('G103', '10:05:00');
insert into train (name, departure_time ) values ('G103B', '10:05:00');
insert into train (name, departure_time ) values ('G104', '06:45:00');
insert into train (name, departure_time ) values ('G104B', '17:45:00');
insert into train (name, departure_time ) values ('G105', '12:10:00');
insert into train (name, departure_time ) values ('G105B', '12:10:00');
insert into train (name, departure_time ) values ('G106', '07:00:00'); 
insert into train (name, departure_time ) values ('G106B', '07:00:00'); 

#G100 Yekaterinburg(RU)-Petropavlovsk-Omsk(RU)-Novosibirsk(RU) 
#	and G100B the same way but in the backwards direction
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G100', 'Yekaterinburg(RU)', 0, 0); #start station
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G100', 'Petropavlovsk', 2, 1000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G100', 'Omsk(RU)', 4, 2000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G100', 'Novosibirsk(RU)', 6, 3000); #end/start station
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G100B', 'Novosibirsk(RU)', 0, 0);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G100B', 'Omsk(RU)', 2, 1000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G100B', 'Petropavlovsk', 4, 2000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G100B', 'Yekaterinburg(RU)', 6, 3000); #end station

#G104 Astana-Borovoe-Kokshetau-Petropavlovsk-Omsk(RU)-Novosibirsk(RU) 
#	and G104B the same way but in the backwards direction
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104', 'Astana', 0, 0); 
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104', 'Borovoe', 2, 1000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104', 'Kokshetau', 4, 2000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104', 'Petropavlovsk', 6, 3000); 
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104', 'Omsk(RU)', 8, 4000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104', 'Novosibirsk(RU)', 10, 5000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104B', 'Novosibirsk(RU)', 0, 0);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104B', 'Omsk(RU)', 2, 1000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104B', 'Petropavlovsk', 4, 2000); 
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104B', 'Kokshetau', 6, 3000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104B', 'Borovoe', 8, 4000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G104B', 'Astana', 10, 5000); 


#G101 Saratov(RU)-Uralsk-Aqtobe-Kandyagash-Kostanay 
#	and G101B the same way but in the backwards direction
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101', 'Saratov(RU)', 0, 0);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101', 'Uralsk', 2, 1000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101', 'Aqtobe', 4, 2000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101', 'Kandyagash', 6, 3000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101', 'Kostanay', 8, 4000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101B', 'Kostanay', 0, 0);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101B', 'Kandyagash', 2, 1000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101B', 'Aqtobe', 4, 2000); 
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101B', 'Uralsk', 6, 3000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G101B', 'Saratov(RU)', 8, 4000); 

#G102 Volgograd(RU)-Astrakhan(RU)-Atyrau-Makat-Beyneu-Kungrad(UZ)-Nukus(UZ) 
#	and G102B the same way but in the backwards direction
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Volgograd(RU)', 0, 0);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Astrakhan(RU)', 2, 1000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Atyrau', 4, 2000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Makat', 6, 3000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Beyneu', 8, 4000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Kungrad(UZ)', 10, 5000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Nukus(UZ)', 12, 6000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Nukus(UZ)', 0, 0);  
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Kungrad(UZ)', 14, 1000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Beyneu', 16, 2000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Makat', 18, 3000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Atyrau', 20, 4000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Astrakhan(RU)', 22, 5000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G102', 'Volgograd(RU)', 24, 6000);


#G106 Aralsk-Zhezkazgan-Zharyk-Moiynty-Balkhash-Aktogay and back
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Aralsk', 0, 0);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Zhezkazgan', 2, 1000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Zharyk', 4, 2000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Moiynty', 6, 3000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Balkhash', 8, 4000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Aktogay', 10, 5000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Balkhash', 12, 1000); 
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Moiynty', 14, 2000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Zharyk', 16, 3000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Zhezkazgan', 18, 4000);
insert into schedule (train_name, station_name, cost_time, cost_money) values ('G106', 'Aralsk', 20, 5000);


#Trains with corresponding available seats number and their type
insert into seats (train_name, luxe, coupe ,platskart) values ('G100', 10,20,30);
insert into seats (train_name, luxe, coupe ,platskart) values ('G101', 10,20,30);
insert into seats (train_name, luxe, coupe ,platskart) values ('G102', 10,20,30);
insert into seats (train_name, luxe, coupe ,platskart) values ('G103', 10,20,30);
insert into seats (train_name, luxe, coupe ,platskart) values ('G104', 10,20,30);
insert into seats (train_name, luxe, coupe ,platskart) values ('G105', 10,20,30);
insert into seats (train_name, luxe, coupe ,platskart) values ('G106', 10,20,30);



