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
remember_token	varchar(100),
created_at	timestamp,
updated_at	timestamp,
PRIMARY KEY (id)
);