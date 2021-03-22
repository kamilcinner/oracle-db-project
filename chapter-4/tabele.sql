#USE blablacar;
#SET sql_mode='ANSI_QUOTES';

-- CarColor
CREATE TABLE CarColor (
    carColorKey INT,
    carColorName VARCHAR(40) NOT NULL,
    carColorTypeKey INT NOT NULL
);

-- CarMark
CREATE TABLE CarMark (
    carMarkKey INT,
    carMarkName VARCHAR(40) NOT NULL
);

-- CarType
CREATE TABLE CarType(
    carTypeKey INT,
    carTypeName VARCHAR(20) NOT NULL
);

-- Car
CREATE TABLE Car (
    carKey INT,
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
CREATE TABLE `User` (
    userKey INT,
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
    userStatusKey INT,
    userStatusName VARCHAR(20) NOT NULL,
    userStatusDescription VARCHAR(100)
);

-- UserStatusHistory
CREATE TABLE UserStatusHistory (
    userStatusHistoryKey INT,
    changeDateTime TIMESTAMP NOT NULL,
    userKey INT NOT NULL,
    userStatusKey INT NOT NULL
);

-- PostStatus
CREATE TABLE PostStatus (
    postStatusKey INT,
    postStatusName VARCHAR(20) NOT NULL
);

-- PostStatusHistory
CREATE TABLE PostStatusHistory (
    postStatusHistoryKey INT,
    changeDateTime TIMESTAMP NOT NULL,
    postKey INT NOT NULL,
    postStatusKey INT NOT NULL
);

-- Post
CREATE TABLE Post (
    postKey INT,
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
    addressKey INT,
    postCode VARCHAR(5) NOT NULL,
    street VARCHAR(20) NOT NULL,
    houseNumber VARCHAR(20) NOT NULL,
    flatNumber VARCHAR(20),
    cityKey INT NOT NULL
);

-- City
CREATE TABLE City (
    cityKey INT,
    cityName VARCHAR(20) NOT NULL,
    countryKey INT NOT NULL
);

-- Country
CREATE TABLE Country (
    countryKey INT,
    countryName VARCHAR(20) NOT NULL
);

-- PaymentMethod
CREATE TABLE PaymentMethod (
    paymentMethodKey INT,
    paymentMethodName VARCHAR(20) NOT NULL
);

-- PaymentStatus
CREATE TABLE PaymentStatus (
    paymentStatusKey INT,
    paymentStatusName VARCHAR(20) NOT NULL
);

-- PaymentStatusHistory
CREATE TABLE PaymentStatusHistory (
    paymentStatusHistoryKey INT,
    changeDateTime TIMESTAMP NOT NULL,
    paymentKey INT NOT NULL,
    paymentStatusKey INT NOT NULL
);

-- Payment
CREATE TABLE Payment (
    paymentKey INT,
    totalAmount DECIMAL(10, 2) NOT NULL,
    externalPaymentNumber VARCHAR(40) NOT NULL,
    paymentMethodKey INT NOT NULL,
    reservationKey INT NOT NULL
);

-- ReservationStatus
CREATE TABLE ReservationStatus (
    reservationStatusKey INT,
    reservationStatusName VARCHAR(20) NOT NULL
);

-- ReservationStatusHistory
CREATE TABLE ReservationStatusHistory (
    reservationStatusHistoryKey INT,
    changeDateTime TIMESTAMP NOT NULL,
    reservationKey INT NOT NULL,
    reservationStatusKey INT NOT NULL
);

-- Reservation
CREATE TABLE Reservation (
    reservationKey INT,
    reservationDateTime TIMESTAMP NOT NULL,
    seatsCount INT NOT NULL,
    postKey INT NOT NULL,
    userKey INT NOT NULL
);

-- Role
CREATE TABLE `Role` (
    roleKey INT,
    roleName VARCHAR(20) NOT NULL
);

-- UserRole
CREATE TABLE UserRole (
    userRoleKey INT,
    userKey INT NOT NULL,
    roleKey INT NOT NULL
);
