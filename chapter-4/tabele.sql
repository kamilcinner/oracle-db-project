--create database blablacar;

-- CarColor
CREATE TABLE CarColor (
    carColorKey SERIAL,
    carColorName VARCHAR(40) NOT NULL
);

-- CarMark
CREATE TABLE CarMark (
    carMarkKey SERIAL,
    carMarkName VARCHAR(40) NOT NULL
);

-- CarType
CREATE TABLE CarType(
    carTypeKey SERIAL,
    carTypeName VARCHAR(20) NOT NULL
);

-- Car
CREATE TABLE Car (
    carKey SERIAL,
    regNumber VARCHAR(20) NOT NULL,
    prodYear CHAR(4) NOT NULL,
    seatsCount INT NOT NULL,
    userKey INT NOT NULL,
    carMarkKey INT NOT NULL,
    model VARCHAR(30) NOT NULL,
    carColorKey INT NOT NULL,
    carTypeKey INT NOT NULL
);

-- User
CREATE TABLE "user" (
    userKey SERIAL,
    username VARCHAR(20) NOT NULL,
    hashedPassword VARCHAR(100) NOT NULL,
    salt VARCHAR(100) NOT NULL,
    email VARCHAR(30) NOT NULL,
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    surname VARCHAR(20) NOT NULL,
    dateOfBirth DATE NOT NULL,
    phoneNumber VARCHAR(9) NOT NULL,
    addressKey INT
);

-- UserStatus
CREATE TABLE UserStatus (
    userStatusKey SERIAL,
    userStatusName VARCHAR(20) NOT NULL,
    userStatusDescription VARCHAR(100)
);

-- UserStatusChange
CREATE TABLE UserStatusChange (
    userStatusChangeKey SERIAL,
    changeDateTime TIMESTAMP NOT NULL,
    userKey INT NOT NULL,
    userStatusKey INT NOT NULL
);

-- PostStatus
CREATE TABLE PostStatus (
    postStatusKey SERIAL,
    postStatusName VARCHAR(20) NOT NULL
);

-- PostStatusChange
CREATE TABLE PostStatusChange (
    postStatusChangeKey SERIAL,
    changeDateTime TIMESTAMP NOT NULL,
    postKey INT NOT NULL,
    postStatusKey INT NOT NULL
);

-- Post
CREATE TABLE Post (
    postKey SERIAL,
    departureDateTime TIMESTAMP NOT NULL,
    arrivalDateTime TIMESTAMP NOT NULL,
    seatsCount INT NOT NULL,
    seatPrice DECIMAL(10, 2) NOT NULL,
    departureAddressKey INT NOT NULL,
    arrivalAddressKey INT NOT NULL,
    carKey INT NOT NULL
);

-- Address
CREATE TABLE Address (
    addressKey SERIAL,
    postCode VARCHAR(5) NOT NULL,
    street VARCHAR(20) NOT NULL,
    houseNumber VARCHAR(20) NOT NULL,
    flatNumber VARCHAR(20),
    cityKey INT NOT NULL
);

-- City
CREATE TABLE City (
    cityKey SERIAL,
    cityName VARCHAR(20) NOT NULL,
    countryKey INT NOT NULL
);

-- Country
CREATE TABLE Country (
    countryKey SERIAL,
    countryName VARCHAR(20) NOT NULL
);

-- PaymentMethod
CREATE TABLE PaymentMethod (
    paymentMethodKey SERIAL,
    paymentMethodName VARCHAR(20) NOT NULL
);

-- PaymentStatus
CREATE TABLE PaymentStatus (
    paymentStatusKey SERIAL,
    paymentStatusName VARCHAR(20) NOT NULL
);

-- PaymentStatusChange
CREATE TABLE PaymentStatusChange (
    paymentStatusChangeKey SERIAL,
    changeDateTime TIMESTAMP NOT NULL,
    paymentKey INT NOT NULL,
    paymentStatusKey INT NOT NULL
);

-- Payment
CREATE TABLE Payment (
    paymentKey SERIAL,
    totalAmount DECIMAL(10, 2) NOT NULL,
    externalPaymentNumber VARCHAR(40) NOT NULL,
    paymentMethodKey INT NOT NULL,
    reservationKey INT NOT NULL
);

-- ReservationStatus
CREATE TABLE ReservationStatus (
    reservationStatusKey SERIAL,
    reservationStatusName VARCHAR(20) NOT NULL
);

-- ReservationStatusChange
CREATE TABLE ReservationStatusChange (
    reservationStatusChangeKey SERIAL,
    changeDateTime TIMESTAMP NOT NULL,
    reservationKey INT NOT NULL,
    reservationStatusKey INT NOT NULL
);

-- Reservation
CREATE TABLE Reservation (
    reservationKey SERIAL,
    reservationDateTime TIMESTAMP NOT NULL,
    seatsCount INT NOT NULL,
    postKey INT NOT NULL,
    userKey INT NOT NULL
);

-- Role
CREATE TABLE Role (
    roleKey SERIAL,
    roleName VARCHAR(20) NOT NULL
);

-- UserRole
CREATE TABLE UserRole (
    userRoleKey SERIAL,
    userKey INT NOT NULL,
    roleKey INT NOT NULL
);
