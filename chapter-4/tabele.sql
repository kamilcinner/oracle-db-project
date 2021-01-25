-- CarColor
CREATE TABLE CarColor (
    carColorKey NUMBER(4),
    carColorName VARCHAR(40) NOT NULL,
    carColorTypeKey NUMBER(4) NOT NULL
);

-- CarColorType
CREATE TABLE CarColorType (
    carColorTypeKey NUMBER(4),
    carColorTypeName VARCHAR(40) NOT NULL
);

-- CarMark
CREATE TABLE CarMark (
    carMarkKey NUMBER(4),
    carMarkName VARCHAR(40) NOT NULL
);

-- CarType
CREATE TABLE CarType(
    carTypeKey NUMBER(4),
    cartypeName VARCHAR(20) NOT NULL
);

-- Car
CREATE TABLE Car (
    carKey NUMBER(10),
    regNumber VARCHAR(20) NOT NULL,
    prodYear CHAR(4) NOT NULL,
    seatsCount NUMBER(10) NOT NULL,
    userKey NUMBER(10) NOT NULL,
    carMarkKey NUMBER(4) NOT NULL,
    model VARCHAR(30) NOT NULL,
    carColorKey NUMBER(4) NOT NULL,
    carTypeKey NUMBER(4) NOT NULL
);

-- User
CREATE TABLE "USER" (
    userKey NUMBER(10),
    username VARCHAR(20) NOT NULL,
    hashedPassword VARCHAR(100) NOT NULL,
    salt VARCHAR(100) NOT NULL,
    email VARCHAR(30) NOT NULL,
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    surname VARCHAR(20) NOT NULL,
    dateOfBirth DATE NOT NULL,
    phoneNumber VARCHAR(9) NOT NULL,
    addressKey NUMBER(10) NOT NULL
);

-- UserStatus
CREATE TABLE UserStatus (
    userStatusKey NUMBER(4),
    userStatusName VARCHAR(20) NOT NULL,
    userStatusDescription VARCHAR(100)
);

-- UserStatusHistory
CREATE TABLE UserStatusHistory (
    userStatusHistoryKey NUMBER(4),
    changeDateTime TIMESTAMP NOT NULL,
    userKey NUMBER(10) NOT NULL,
    userStatusKey NUMBER(4) NOT NULL
);

-- PostStatus
CREATE TABLE PostStatus (
    postStatusKey NUMBER(4),
    postStatusName VARCHAR(20) NOT NULL
);

-- PostStatusHistory
CREATE TABLE PostStatusHistory (
    postStatusHistoryKey NUMBER(4),
    changeDateTime TIMESTAMP NOT NULL,
    postKey NUMBER(10) NOT NULL,
    postStatusKey NUMBER(4) NOT NULL
);

-- Post
CREATE TABLE Post (
    postKey NUMBER(10),
    departureDateTime TIMESTAMP NOT NULL,
    arrivalDateTime TIMESTAMP NOT NULL,
    seatsCount NUMBER(10) NOT NULL,
    seatPrice NUMBER(10, 2) NOT NULL,
    departureAddressKey NUMBER(10) NOT NULL,
    arrivalAddressKey NUMBER(10) NOT NULL,
    carKey NUMBER(10) NOT NULL
);

-- Address
CREATE TABLE Address (
    addressKey NUMBER(10),
    postCode VARCHAR(5) NOT NULL,
    street VARCHAR(20) NOT NULL,
    houseNumber VARCHAR(20) NOT NULL,
    flatNumber VARCHAR(20),
    cityKey NUMBER(10) NOT NULL
);

-- City
CREATE TABLE City (
    cityKey NUMBER(10),
    cityName VARCHAR(20) NOT NULL,
    countryKey NUMBER(10) NOT NULL
);

-- Country
CREATE TABLE Country (
    countryKey NUMBER(10),
    countryName VARCHAR(20) NOT NULL
);

-- PaymentMethod
CREATE TABLE PaymentMethod (
    paymentMethodKey NUMBER(4),
    paymentMethodName VARCHAR2(20) NOT NULL
);

-- PaymentStatus
CREATE TABLE PaymentStatus (
    paymentStatusKey NUMBER(4),
    paymentStatusName VARCHAR2(20) NOT NULL
);

-- PaymentStatusHistory
CREATE TABLE PaymentStatusHistory (
    paymentStatusHistoryKey NUMBER(10),
    changeDateTime TIMESTAMP NOT NULL,
    paymentKey NUMBER(10) NOT NULL,
    paymentStatusKey NUMBER(4) NOT NULL
);

-- Payment
CREATE TABLE Payment (
    paymentKey NUMBER(10),
    totalAmount NUMBER(10, 2) NOT NULL,
    externalPaymentNumber VARCHAR(40) NOT NULL,
    paymentMethodKey NUMBER(4) NOT NULL,
    reservationKey NUMBER(10) NOT NULL
);

-- ReservationStatus
CREATE TABLE ReservationStatus (
    reservationStatusKey NUMBER(4),
    reservationStatusName VARCHAR(20) NOT NULL
);

-- ReservationStatusHistory
CREATE TABLE ReservationStatusHistory (
    reservationStatusHistoryKey NUMBER(4),
    changeDateTime TIMESTAMP NOT NULL,
    reservationKey NUMBER(10) NOT NULL,
    reservationStatusKey NUMBER(4) NOT NULL
);

-- Reservation
CREATE TABLE Reservation (
    reservationKey NUMBER(10),
    reservationDateTime TIMESTAMP NOT NULL,
    seatsCount NUMBER(10) NOT NULL,
    postKey NUMBER(10) NOT NULL,
    userKey NUMBER(10) NOT NULL
);
