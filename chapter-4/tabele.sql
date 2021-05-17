--create database blablacar;

-- CarColor
CREATE TABLE CarColor (
    carColorKey INT IDENTITY(1,1),
    carColorName VARCHAR(40) NOT NULL
);

-- CarMark
CREATE TABLE CarMark (
    carMarkKey INT IDENTITY(1,1),
    carMarkName VARCHAR(40) NOT NULL
);

-- CarType
CREATE TABLE CarType(
    carTypeKey INT IDENTITY(1,1),
    carTypeName VARCHAR(20) NOT NULL
);

-- Car
CREATE TABLE Car (
    carKey INT IDENTITY(1,1),
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
CREATE TABLE "User" (
    userKey INT IDENTITY(1,1),
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
    userStatusKey INT IDENTITY(1,1),
    userStatusName VARCHAR(20) NOT NULL,
    userStatusDescription VARCHAR(100)
);

-- UserStatusChange
CREATE TABLE UserStatusChange (
    userStatusChangeKey INT IDENTITY(1,1),
    changeDateTime DATETIME NOT NULL,
    userKey INT NOT NULL,
    userStatusKey INT NOT NULL
);

-- PostStatus
CREATE TABLE PostStatus (
    postStatusKey INT IDENTITY(1,1),
    postStatusName VARCHAR(20) NOT NULL
);

-- PostStatusChange
CREATE TABLE PostStatusChange (
    postStatusChangeKey INT IDENTITY(1,1),
    changeDateTime DATETIME NOT NULL,
    postKey INT NOT NULL,
    postStatusKey INT NOT NULL
);

-- Post
CREATE TABLE Post (
    postKey INT IDENTITY(1,1),
    departureDateTime DATETIME NOT NULL,
    arrivalDateTime DATETIME NOT NULL,
    seatsCount INT NOT NULL,
    seatPrice DECIMAL(10, 2) NOT NULL,
    departureAddressKey INT NOT NULL,
    arrivalAddressKey INT NOT NULL,
    carKey INT NOT NULL
);

-- Address
CREATE TABLE Address (
    addressKey INT IDENTITY(1,1),
    postCode VARCHAR(5) NOT NULL,
    street VARCHAR(20) NOT NULL,
    houseNumber VARCHAR(20) NOT NULL,
    flatNumber VARCHAR(20),
    cityKey INT NOT NULL
);

-- City
CREATE TABLE City (
    cityKey INT IDENTITY(1,1),
    cityName VARCHAR(20) NOT NULL,
    countryKey INT NOT NULL
);

-- Country
CREATE TABLE Country (
    countryKey INT IDENTITY(1,1),
    countryName VARCHAR(20) NOT NULL
);

-- PaymentMethod
CREATE TABLE PaymentMethod (
    paymentMethodKey INT IDENTITY(1,1),
    paymentMethodName VARCHAR(20) NOT NULL
);

-- PaymentStatus
CREATE TABLE PaymentStatus (
    paymentStatusKey INT IDENTITY(1,1),
    paymentStatusName VARCHAR(20) NOT NULL
);

-- PaymentStatusChange
CREATE TABLE PaymentStatusChange (
    paymentStatusChangeKey INT IDENTITY(1,1),
    changeDateTime DATETIME NOT NULL,
    paymentKey INT NOT NULL,
    paymentStatusKey INT NOT NULL
);

-- Payment
CREATE TABLE Payment (
    paymentKey INT IDENTITY(1,1),
    totalAmount DECIMAL(10, 2) NOT NULL,
    externalPaymentNumber VARCHAR(40) NOT NULL,
    paymentMethodKey INT NOT NULL,
    reservationKey INT NOT NULL
);

-- ReservationStatus
CREATE TABLE ReservationStatus (
    reservationStatusKey INT IDENTITY(1,1),
    reservationStatusName VARCHAR(20) NOT NULL
);

-- ReservationStatusChange
CREATE TABLE ReservationStatusChange (
    reservationStatusChangeKey INT IDENTITY(1,1),
    changeDateTime DATETIME NOT NULL,
    reservationKey INT NOT NULL,
    reservationStatusKey INT NOT NULL
);

-- Reservation
CREATE TABLE Reservation (
    reservationKey INT IDENTITY(1,1),
    reservationDateTime DATETIME NOT NULL,
    seatsCount INT NOT NULL,
    postKey INT NOT NULL,
    userKey INT NOT NULL
);

-- Role
CREATE TABLE Role (
    roleKey INT IDENTITY(1,1),
    roleName VARCHAR(20) NOT NULL
);

-- UserRole
CREATE TABLE UserRole (
    userRoleKey INT IDENTITY(1,1),
    userKey INT NOT NULL,
    roleKey INT NOT NULL
);
