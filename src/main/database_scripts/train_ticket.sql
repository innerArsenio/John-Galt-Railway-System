drop database if exists railway_system;
create database if not exists railway_system;

use railway_system;


drop table if exists train;
create table if not exists train(
	name varchar(20) primary key, -- the name of the train such as G7095
	departure_time time not null -- the every day departure time (start) from the start station
);

drop table if exists station;
create table if not exists station(
	name varchar(20) primary key -- the name of the station such as Beijing
);

drop table if exists schedule;
create table if not exists schedule(
	schedule_id int(255) AUTO_INCREMENT PRIMARY KEY,
	station_name varchar(20),
	train_name varchar(20) not null,
	cost_time integer(10) not null, -- the hours it costs for "train_name" to travel from initiaing station to "station_id"
	cost_money integer(10) not null, -- the tenge it costs for "train_name" to travel from initiaing station to "station_id"
    foreign key (station_name) references station(name),
    foreign key (train_name) references train(name)
);

drop table if exists seats;
create table if not exists seats(
	train_name varchar(20) primary key references train(name),
	luxe int(20) not null,
    coupe int (20) not null,
    platskart int (20) not null
);