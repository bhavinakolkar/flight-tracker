--liquibase formatted sql
--changeset bakolkar:create-city-table
CREATE TABLE `city` (
  `name` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--rollback drop table city
--changeset bakolkar:create-airline-table
CREATE TABLE `airline` (
  `airline_id` varchar(255) NOT NULL,
  `airline_code` varchar(255) DEFAULT NULL,
  `airline_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`airline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--rollback drop table airline
--changeset bakolkar:create-airport-table
CREATE TABLE `airport` (
  `airport_name` varchar(255) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`airport_name`),
  KEY `FK2eadt8w2ya9v4heg8q90fa7ys` (`city_name`),
  CONSTRAINT `FK2eadt8w2ya9v4heg8q90fa7ys` FOREIGN KEY (`city_name`) REFERENCES `city` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--rollback drop table airport
--changeset bakolkar:create-airline-airport-table
CREATE TABLE `airport_airline` (
  `airport_name` varchar(255) NOT NULL,
  `airline_id` varchar(255) NOT NULL,
  PRIMARY KEY (`airport_name`,`airline_id`),
  KEY `FK3efpk9jivqk1kt65owqd4o6ys` (`airline_id`),
  CONSTRAINT `FK3efpk9jivqk1kt65owqd4o6ys` FOREIGN KEY (`airline_id`) REFERENCES `airline` (`airline_id`),
  CONSTRAINT `FKea82mpgq4anll0sbjmnjw9efb` FOREIGN KEY (`airport_name`) REFERENCES `airport` (`airport_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--rollback drop table airline_airport
--changeset bakolkar:create-flight-table
CREATE TABLE `flight` (
  `flight_code` varchar(255) NOT NULL,
  `arrival` varchar(255) DEFAULT NULL,
  `departure` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `layover_time` varchar(255) DEFAULT NULL,
  `number_of_stops` int DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `flight_type` varchar(255) DEFAULT NULL,
  `airline_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`flight_code`),
  KEY `FK37wfh52g7g91rllg104gfq3yv` (`airline_id`),
  CONSTRAINT `FK37wfh52g7g91rllg104gfq3yv` FOREIGN KEY (`airline_id`) REFERENCES `airline` (`airline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--rollback drop table flight