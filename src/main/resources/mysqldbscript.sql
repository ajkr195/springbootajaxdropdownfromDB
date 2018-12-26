drop database if exists citybycountry;
create database citybycountry;
use citybycountry;

CREATE TABLE  country (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB;


CREATE TABLE  city (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB;



ALTER TABLE city ADD CONSTRAINT FK_COUNTRYID FOREIGN KEY (country_id) REFERENCES country (id); 


INSERT INTO `citybycountry`.`country` (`id`, `name`) VALUES ('1', 'INDIA');
INSERT INTO `citybycountry`.`country` (`id`, `name`) VALUES ('2', 'USA');
INSERT INTO `citybycountry`.`country` (`id`, `name`) VALUES ('3', 'UK');


INSERT INTO `citybycountry`.`city` (`id`, `name`, `country_id`) VALUES ('1', 'Gurugram', 1);
INSERT INTO `citybycountry`.`city` (`id`, `name`, `country_id`) VALUES ('2', 'Delhi', 1);
INSERT INTO `citybycountry`.`city` (`id`, `name`, `country_id`) VALUES ('3', 'Noida', 1);
INSERT INTO `citybycountry`.`city` (`id`, `name`, `country_id`) VALUES ('4', 'Washington DC', 2);
INSERT INTO `citybycountry`.`city` (`id`, `name`, `country_id`) VALUES ('5', 'New York', 2);
INSERT INTO `citybycountry`.`city` (`id`, `name`, `country_id`) VALUES ('6', 'Dallas', 2);
INSERT INTO `citybycountry`.`city` (`id`, `name`, `country_id`) VALUES ('7', 'London', 3);
INSERT INTO `citybycountry`.`city` (`id`, `name`, `country_id`) VALUES ('8', 'Manchester', 3);
INSERT INTO `citybycountry`.`city` (`id`, `name`, `country_id`) VALUES ('9', 'Amsterdam', 3);