--liquibase formatted sql
--changeset bakolkar:insert-city-rows
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES('Louisville','Kentucky','United States');
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES ('Chandigarh','Chandigarh','India');
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES ('Fort Worth','Texas','United States');
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES('Delhi','Delhi','India');
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES('Mumbai','Maharashtra','India');
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES('San Francisco', 'California', 'United States');
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES('Frankfurt','Hesse','Germany');
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES('Houston','Texas','United States');
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES('New York City','New York','United States');
INSERT INTO CITY (NAME, STATE, COUNTRY) VALUES('Tampa', 'Florida', 'United States');
--changeset bakolkar:insert-airline-rows
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('AA','American Airlines','001');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('AI','Air India Limited','098');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('LH','Lufthansa', '220');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('BA','British Airways','125');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('QR','Qatar Airways','157');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('9W','Jet Airways','589');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('EK','Emirates','176');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('EY','Ethiad Airways','607');
--changeset bakolkar:insert-airport-rows
INSERT INTO AIRPORT (airport_name, city_name) VALUES('Louisville International Airport','Louisville');
INSERT INTO AIRPORT (airport_name, city_name) VALUES('Chandigarh International Airport','Chandigarh');
INSERT INTO AIRPORT (airport_name, city_name) VALUES('Dallas/Fort Worth International Airport','Fort Worth');
INSERT INTO AIRPORT (airport_name, city_name) VALUES('Indira GandhiInternational Airport','Delhi');
INSERT INTO AIRPORT (airport_name, city_name) VALUES('Chhatrapati Shivaji International Airport','Mumbai');
INSERT INTO AIRPORT (airport_name, city_name) VALUES('San Francisco International Airport','San Francisco');
INSERT INTO AIRPORT (airport_name, city_name) VALUES('Frankfurt Airport','Frankfurt');
INSERT INTO AIRPORT (airport_name, city_name) VALUES('George Bush Intercontinental Airport','Houston');
INSERT INTO AIRPORT (airport_name, city_name) VALUES('John F. Kennedy International Airport','New York City');
INSERT INTO AIRPORT (airport_name, city_name) VALUES('Tampa International Airport','Tampa');
--changeset bakolkar:insert-airline-rows
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('AA','American Airlines','001');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('AI','Air India Limited','098');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('LH','Lufthansa', '220');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('BA','British Airways','125');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('QR','Qatar Airways','157');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('9W','Jet Airways','589');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('EK','Emirates','176');
INSERT INTO AIRLINE (airline_id, airline_name, airline_code) VALUES('EY','Ethiad Airways','607');
--changeset bakolkar:insert-airline-airport-rows
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AA','Louisville International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AA','John F. Kennedy International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AA','George Bush Intercontinental Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AA','San Francisco International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AA','Tampa International Airport');

INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AI','Chandigarh International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AI','Dallas/Fort Worth International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AI','Indira GandhiInternational Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AI','Chhatrapati Shivaji International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('AI','George Bush Intercontinental Airport');

INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('LH','Chhatrapati Shivaji International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('LH','Frankfurt Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('LH','John F. Kennedy International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('LH','San Francisco International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('LH','Dallas/Fort Worth International Airport');

INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('BA','John F. Kennedy International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('BA','Chhatrapati Shivaji International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('BA','Chandigarh International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('BA','Frankfurt Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('BA','San Francisco International Airport');

INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('QR','Chhatrapati Shivaji International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('QR','Dallas/Fort Worth International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('QR','John F. Kennedy International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('QR','Tampa International Airport');
INSERT INTO AIRPORT_AIRLINE (AIRLINE_ID, AIRPORT_NAME) VALUES('QR','Louisville International Airport');