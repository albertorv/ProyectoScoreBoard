Create database proyecto1;
use proyecto1;


create table migrations(
migration	varchar(255),
batch	int(11)
);

create table passwod_resets(
email	varchar(255),
token	varchar(255),
created_at	timestamp
);

create table users(
id	int(10) not null,
name	varchar(255),
email	varchar(255),
password	varchar(60),
role enum ('A','U'),
remember_token	varchar(100),
created_at	timestamp,
updated_at	timestamp,
PRIMARY KEY (id)
);

create table team_user(
id	int(10) not null,
team_id int(10),
user_id int(10),
role enum('A','R','W'),
created_at	timestamp,
updated_at	timestamp,
PRIMARY KEY (id)
);

create table teams(
id	int(10) not null,
name varchar(255),
description text(255),
created_at	timestamp,
updated_at	timestamp,
PRIMARY KEY (id)
);

create table goals(
id	int(10) not null,
short_description varchar(255),
long_description text,
status enum('C','P','N'),
public_statics enum('Y','N'),
team_id int(10),
predecessor_goal_id int(10),
created_at	timestamp,
updated_at	timestamp,
PRIMARY KEY (id)
);

create table lag_measures(
id int(10) not null,
short_description varchar(255),
long_description text,
weight_value int(11),
percentage int(11),
goal_id int(10),
created_at	timestamp,
updated_at	timestamp,
PRIMARY KEY (id)
);

create table lead_measures(
id int(10) not null,
short_description varchar(255),
long_description text,
lag_measure_id int(10),
estimated_value int(11),
periodicity_days int(11),
group_measure enum('Y','N'),
start_date DATE,
status enum('E','D'),
created_at	timestamp,
updated_at	timestamp,
PRIMARY KEY (id)
);

create table lead_measure_logs(
id int (10) not null,
lead_measure_id int(10),
users_id int(10),
amount int(10),
log_time timestamp,
created_at	timestamp,
updated_at	timestamp,
PRIMARY KEY (id)
);