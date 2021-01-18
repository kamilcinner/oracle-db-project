-- CarColor
CREATE TABLE CarColor(
    CarColorKey NUMBER(4),
    CarColorName VARCHAR(40)
);

-- CarMark
CREATE TABLE CarMark(
    CarMarkKey NUMBER(4),
    CarMarkName VARCHAR(40)
);

-- Car
CREATE TABLE Car(
    CarKey NUMBER(10),
    CarRegNumber VARCHAR(255),
    ProdYear CHAR(4),
    SeatsCount NUMBER(10),
    BlaBlaUserKey NUMBER(10),
    CarMarkKey NUMBER(4),
    CarColorKey NUMBER(4)
);

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