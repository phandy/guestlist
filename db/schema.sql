CREATE TABLE IF NOT EXISTS Users(
	id int NOT NULL AUTO_INCREMENT,
	username varchar(10) UNIQUE,
	password varchar(64) NOT NULL,
	role int(4) NOT NULL,
	primary key (id)

);

CREATE TABLE IF NOT EXISTS Users(id int NOT NULL AUTO_INCREMENT,username varchar(10) UNIQUE,password varchar(64) NOT NULL,role int(4) NOT NULL,primary key (id));

CREATE TABLE IF NOT EXISTS Venue(id int NOT NULL AUTO_INCREMENT,name varchar(10) UNIQUE,primary key (id));

CREATE TABLE IF NOT EXISTS Guests(id int NOT NULL AUTO_INCREMENT,venue_id int NOT NULL,name varchar(10) NOT NULL,number_of_guests int NOT NULL,primary key (id),constraint `fk_venue_id` foreign key (venue_id) REFERENCES Venue(id)); 