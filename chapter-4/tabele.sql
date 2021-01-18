-- CarColor
CREATE TABLE CarColor(
    carColorKey NUMBER(4),
    carColorName VARCHAR(40)
);

-- CarMark
CREATE TABLE CarMark(
    carMarkKey NUMBER(4),
    carMarkName VARCHAR(40)
);

-- Car
CREATE TABLE Car(
    carKey NUMBER(10),
    regNumber VARCHAR(20),
    prodYear CHAR(4),
    seatsCount NUMBER(10),
    blaBlaUserKey NUMBER(10),
    carMarkKey NUMBER(4),
    carColorKey NUMBER(4)
);

-- BlaBlaUser
CREATE TABLE BlaBlaUser(
    blaBlaUserKey NUMBER(10),
    username VARCHAR(20),
    hashedPassword VARCHAR(100),
    salt VARCHAR(100),
    email VARCHAR(30),
    firstname VARCHAR(20),
    middlename VARCHAR(20),
    surname VARCHAR(20),
    dateOfBirth date,
    phoneNumber VARCHAR(9),
    addressKey NUMBER(10)
);

-- PostStatus
CREATE TABLE PostStatus(
    postStatusKey NUMBER(4),
    postStatusName VARCHAR(20)
);

-- Post
CREATE TABLE Post(
    postKey NUMBER(10),
    departureDateTime timestamp,
    arrivalDateTime timestamp,
    seatsCount NUMBER(10),
    seatPrice NUMBER(10, 2),
    postStatusKey NUMBER(4),
    departureAddressKey NUMBER(10),
    arrivalAddressKey NUMBER(10),
    carKey NUMBER(10)
);

-- Address
CREATE TABLE Address(
    addressKey NUMBER(10),
    postCode VARCHAR(5),
    street VARCHAR(20),
    houseNumber VARCHAR(20),
    flatNumber VARCHAR(20),
    cityKey NUMBER(10)
);

-- City
CREATE TABLE City(
    cityKey NUMBER(10),
    cityName VARCHAR(20),
    countryKey NUMBER(10)
);

-- Country
CREATE TABLE Country(
    countryKey NUMBER(10),
    countryName VARCHAR(20)
);

-- PaymentMethod
CREATE TABLE PaymentMethod(
    paymentMethodKey NUMBER(4),
    paymentMethodName VARCHAR2(20)
);

-- PaymentStatus
CREATE TABLE PaymentStatus(
    paymentStatusKey NUMBER(4),
    paymentStatusName VARCHAR2(20)
);

-- Payment
CREATE TABLE Payment(
    paymentKey NUMBER(10),
    totalAmount NUMBER(10, 2),
    paidDateTime TIMESTAMP,
    paymentMethodKey NUMBER(4),
    paymentStatusKey NUMBER(4),
    travelKey NUMBER(10)
);

-- Travel
CREATE TABLE travel(
    postKey NUMBER(10),
    blaBlaUserKey NUMBER(10),
    travelKey NUMBER(10),
    seatsCount NUMBER(10)
);
