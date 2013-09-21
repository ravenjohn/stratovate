drop database youphoric;
create database youphoric;
use youphoric;

CREATE TABLE users(
	id int(11) auto_increment primary key,
	access_token varchar(40),
	name varchar(32) not null,
	password varchar(32),
	type enum('admin', 'establishment', 'client') default 'client' not null,
	contact_number varchar(128) not null,
	data TEXT,
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
	date_updated TIMESTAMP null
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE services(
	id int(11) auto_increment primary key,
	establishment_id int(11) not null,
	service_name varchar(256) not null,
	code varchar(256) not null,
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
	date_updated TIMESTAMP null
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE requests(
	id int(11) auto_increment primary key,
	user_id int(11) not null,
	establishment_id int(11) not null,
	service_id int(11) not null,
	data TEXT,
	status varchar(255) default 'Pending',
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
	date_updated TIMESTAMP null
);

CREATE TABLE clients(
	id int(11) auto_increment primary key,
	user_id int(11) not null,
	service_id int(11) not null,
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
	date_updated TIMESTAMP null
);

CREATE TABLE logs(
	id int(11) auto_increment primary key,
	uri varchar(255) NOT NULL,
	method varchar(6) NOT NULL,
	params text,
	access_token varchar(40) NOT NULL,
	user_id varchar(40) NOT NULL,
	ip_address varchar(45) NOT NULL,
	authorized tinyint(1) NOT NULL,
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
	date_updated TIMESTAMP null
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE feature_requests(
	id int(11) auto_increment primary key,
	establishment_id int(11) not null,
	feature TEXT not null,
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
	date_updated TIMESTAMP null
);

CREATE TABLE features(
	id int(11) auto_increment primary key,
	name varchar(255) not null,
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
	date_updated TIMESTAMP null
);

