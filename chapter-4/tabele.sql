-- CarColor
CREATE TABLE CarColor (
    carColorKey NUMBER(4),
    carColorName VARCHAR(40),
    carColorTypeKey NUMBER(4)
);

-- CarColorType
CREATE TABLE CarColorType (
    carColorTypeKey NUMBER(4),
    carColorTypeName VARCHAR(40)
);

-- CarMark
CREATE TABLE CarMark (
    carMarkKey NUMBER(4),
    carMarkName VARCHAR(40)
);

-- Car
CREATE TABLE Car (
    carKey NUMBER(10),
    regNumber VARCHAR(20),
    prodYear CHAR(4),
    seatsCount NUMBER(10),
    userKey NUMBER(10),
    carMarkKey NUMBER(4),
    carColorKey NUMBER(4)
);

-- User
CREATE TABLE "USER" (
    userKey NUMBER(10),
    username VARCHAR(20),
    hashedPassword VARCHAR(100),
    salt VARCHAR(100),
    email VARCHAR(30),
    firstname VARCHAR(20),
    middlename VARCHAR(20),
    surname VARCHAR(20),
    dateOfBirth DATE,
    phoneNumber VARCHAR(9),
    addressKey NUMBER(10)
);

-- UserStatus
CREATE TABLE UserStatus (
    userStatusKey NUMBER(4),
    userStatusName VARCHAR(20),
    userStatusDescription VARCHAR(100)
);

-- UserStatusHistory
CREATE TABLE UserStatusHistory (
    userStatusHistoryKey NUMBER(4),
    changeDateTime TIMESTAMP,
    userKey NUMBER(10),
    userStatusKey NUMBER(4)
);

-- PostStatus
CREATE TABLE PostStatus (
    postStatusKey NUMBER(4),
    postStatusName VARCHAR(20)
);

-- PostStatusHistory
CREATE TABLE PostStatusHistory (
    postStatusHistoryKey NUMBER(4),
    changeDateTime TIMESTAMP,
    postKey NUMBER(10),
    postStatusKey NUMBER(4)
);

-- Post
CREATE TABLE Post (
    postKey NUMBER(10),
    departureDateTime TIMESTAMP,
    arrivalDateTime TIMESTAMP,
    seatsCount NUMBER(10),
    seatPrice NUMBER(10, 2),
    postStatusKey NUMBER(4),
    departureAddressKey NUMBER(10),
    arrivalAddressKey NUMBER(10),
    carKey NUMBER(10)
);

-- Address
CREATE TABLE Address (
    addressKey NUMBER(10),
    postCode VARCHAR(5),
    street VARCHAR(20),
    houseNumber VARCHAR(20),
    flatNumber VARCHAR(20),
    cityKey NUMBER(10)
);

-- City
CREATE TABLE City (
    cityKey NUMBER(10),
    cityName VARCHAR(20),
    countryKey NUMBER(10)
);

-- Country
CREATE TABLE Country (
    countryKey NUMBER(10),
    countryName VARCHAR(20)
);

-- PaymentMethod
CREATE TABLE PaymentMethod (
    paymentMethodKey NUMBER(4),
    paymentMethodName VARCHAR2(20)
);

-- PaymentStatus
CREATE TABLE PaymentStatus (
    paymentStatusKey NUMBER(4),
    paymentStatusName VARCHAR2(20)
);

-- Payment
CREATE TABLE Payment (
    paymentKey NUMBER(10),
    totalAmount NUMBER(10, 2),
    paidDateTime TIMESTAMP,
    paymentMethodKey NUMBER(4),
    paymentStatusKey NUMBER(4),
    travelkey NUMBER(10)
);

-- Travel
CREATE TABLE travel (
    travelKey NUMBER(10),
    seatsCount NUMBER(10),
    postKey NUMBER(10),
    userKey NUMBER(10)
);
