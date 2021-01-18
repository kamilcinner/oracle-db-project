-- disable all constraints
ALTER TABLE post DISABLE CONSTRAINT post_car_FK;
ALTER TABLE post DISABLE CONSTRAINT post_departure_address_FK;
ALTER TABLE post DISABLE CONSTRAINT post_arrival_address_FK;
ALTER TABLE post DISABLE CONSTRAINT post_post_status_FK;

ALTER TABLE address DISABLE CONSTRAINT address_city_PK;

ALTER TABLE city DISABLE CONSTRAINT city_country_PK;

ALTER TABLE travel DISABLE CONSTRAINT travel_blabla_user_FK;
ALTER TABLE travel DISABLE CONSTRAINT travel_post_FK;
ALTER TABLE travel DISABLE CONSTRAINT travel_payment_FK;

ALTER TABLE payment DISABLE CONSTRAINT payment_payment_method_FK;
ALTER TABLE payment DISABLE CONSTRAINT payment_payment_status_FK;

ALTER TABLE car DISABLE CONSTRAINT car_blabla_user_FK;
ALTER TABLE car DISABLE CONSTRAINT car_color_FK;
ALTER TABLE car DISABLE CONSTRAINT car_mark_FK;

ALTER TABLE blabla_user DISABLE CONSTRAINT blabla_user_address_FK;

-- drop all tables
DROP TABLE car;
DROP TABLE color;
DROP TABLE mark;
DROP TABLE address;
DROP TABLE city;
DROP TABLE country;
DROP TABLE travel;
DROP TABLE payment;
DROP TABLE payment_method;
DROP TABLE post;
DROP TABLE post_status;
DROP TABLE payment_status;
DROP TABLE blabla_user;


-- create color table
CREATE TABLE color(
color_id NUMBER(4) PRIMARY KEY,
name VARCHAR(255) NOT NULL unique);

-- create mark table
CREATE TABLE mark(
mark_id NUMBER(4) PRIMARY KEY,
name VARCHAR(255) NOT NULL unique);

-- create car table
CREATE TABLE car(
car_id NUMBER(10) PRIMARY KEY,
reg_NUMBER VARCHAR(255) NOT NULL,
prod_year CHAR(4) NOT NULL,
seats_count NUMBER(10) NOT NULL,
blabla_user_id NUMBER(10) NOT NULL,
mark_id NUMBER(4) NOT NULL,
color_id NUMBER(4) NOT NULL);

-- create blabla user table
CREATE TABLE blabla_user(
blabla_user_id NUMBER(10) PRIMARY KEY,
login VARCHAR(255) NOT NULL unique,
hashed_password VARCHAR(255) NOT NULL,
salt VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL unique,
firstname VARCHAR(255) NOT NULL,
middlename VARCHAR(255),
surname VARCHAR(255) NOT NULL,
date_of_birth date NOT NULL,
phone_NUMBER VARCHAR(255) NOT NULL,
address_id NUMBER(10) NOT NULL);

-- create post status table
CREATE TABLE post_status(
post_status_id NUMBER(4) PRIMARY KEY,
name VARCHAR(255) NOT NULL unique);

-- create post table
CREATE TABLE post(
post_id NUMBER(10) PRIMARY KEY,
departure_datetime timestamp NOT NULL,
arrival_datetime timestamp NOT NULL,
seats_free_count NUMBER(10) NOT NULL,
seat_price NUMBER(10, 2) NOT NULL,
post_status_id NUMBER(4) NOT NULL,
departure_address_id NUMBER(10) NOT NULL,
arrival_address_id NUMBER(10) NOT NULL,
car_id NUMBER(10) NOT NULL);

-- create address table
CREATE TABLE address(
address_id NUMBER(10) PRIMARY KEY,
post_code VARCHAR(255) NOT NULL,
street VARCHAR(255) NOT NULL,
house_NUMBER VARCHAR(255) NOT NULL,
flat_NUMBER VARCHAR(255),
city_id NUMBER(10) NOT NULL);

-- create city table
CREATE TABLE city(
city_id NUMBER(10) PRIMARY KEY,
name VARCHAR(255) UNIQUE NOT NULL,
country_id NUMBER(10) NOT NULL);

-- create country table
CREATE TABLE country(
country_id NUMBER(10) PRIMARY KEY,
name VARCHAR(255) UNIQUE NOT NULL);

-- create payment method table
CREATE TABLE payment_method(
payment_method_id NUMBER(4) PRIMARY KEY,
name VARCHAR2(255) NOT NULL unique);

-- create payment status table
CREATE TABLE payment_status(
payment_status_id NUMBER(4) PRIMARY KEY,
name VARCHAR2(255) NOT NULL unique);

-- create payment table
CREATE TABLE payment(
payment_id NUMBER(10) PRIMARY KEY,
total_amount NUMBER(10, 2) NOT NULL,
paid_datetime TIMESTAMP NOT NULL,
payment_method_id NUMBER(4) NOT NULL,
payment_status_id NUMBER(4) NOT NULL,
travel_id NUMBER(10) NOT NULL
);

-- create travel table
CREATE TABLE travel(
travel_id NUMBER(10) PRIMARY KEY,
seats_count NUMBER(10) NOT NULL,
post_id NUMBER(10) NOT NULL,
blabla_user_id NUMBER(10) NOT NULL);

-- add car constrains
ALTER TABLE car add(
CONSTRAINT car_blabla_user_FK FOREIGN KEY(blabla_user_id) REFERENCES blabla_user,
CONSTRAINT car_color_FK FOREIGN KEY(color_id) REFERENCES color,
CONSTRAINT car_mark_FK FOREIGN KEY(mark_id) REFERENCES mark);

-- add post constraints
ALTER TABLE post add(
CONSTRAINT post_car_PK FOREIGN KEY(car_id) REFERENCES car,
CONSTRAINT post_arrival_address_PK FOREIGN KEY(arrival_address_id) REFERENCES address,
CONSTRAINT post_departure_address_PK FOREIGN KEY(departure_address_id) REFERENCES address,
CONSTRAINT post_post_status_FK FOREIGN KEY(post_status_id) REFERENCES post_status);

-- add address constraints
ALTER TABLE address ADD(
CONSTRAINT address_city_FK FOREIGN KEY(city_id) REFERENCES city);

-- add city constraints
ALTER TABLE city ADD(
CONSTRAINT city_country_FK FOREIGN KEY(country_id) REFERENCES country);

-- add payment constraints
ALTER TABLE payment ADD(
CONSTRAINT payment_payment_method_FK FOREIGN KEY(payment_method_id) REFERENCES payment_method,
CONSTRAINT payment_travel_FK FOREIGN KEY(travel_id) REFERENCES travel,
CONSTRAINT payment_payment_status_FK FOREIGN KEY(payment_status_id) REFERENCES payment_status);

-- add travel constraints
ALTER TABLE travel add(
CONSTRAINT travel_post_FK FOREIGN KEY(post_id) REFERENCES post,
CONSTRAINT travel_blabla_user_FK FOREIGN KEY(blabla_user_id) REFERENCES blabla_user);

-- add blabla user constraints
ALTER TABLE blabla_user add(
CONSTRAINT blabla_user_address_FK FOREIGN KEY(address_id) REFERENCES address);

-- create post indexes
CREATE index post_post_status_id_IDX ON post(post_status_id);

-- create user indexes
CREATE index firstname_surname_IDX ON blabla_user(firstname, surname);

-- create car indexes
CREATE index car_mark_id_IDX ON car(mark_id);
CREATE index car_color_id_IDX ON car(color_id);
