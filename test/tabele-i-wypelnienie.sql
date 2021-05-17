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
-- CarColor
ALTER TABLE CarColor
    ADD CONSTRAINT carColor_PK PRIMARY KEY (carColorKey),
    CONSTRAINT carColor_name_UN UNIQUE (carColorName)
;

-- CarMark
ALTER TABLE CarMark
    ADD CONSTRAINT carMark_PK PRIMARY KEY (carMarkKey),
    CONSTRAINT carMark_name_UN UNIQUE (carMarkName)
;

-- CarType
ALTER TABLE CarType
    ADD CONSTRAINT carType_PK PRIMARY KEY (carTypeKey),
    CONSTRAINT carType_name_UN UNIQUE (carTypeName)
;

-- Car
ALTER TABLE Car
    ADD CONSTRAINT car_PK PRIMARY KEY (carKey),
    CONSTRAINT car_regNumber_UN UNIQUE (regNumber)
;

-- User
ALTER TABLE "User"
    ADD CONSTRAINT user_PK PRIMARY KEY (userKey),
    CONSTRAINT user_username_UN UNIQUE (username),
    CONSTRAINT user_email_UN UNIQUE (email),
    CONSTRAINT user_phoneNumber_UN UNIQUE (phoneNumber)
;

-- UserStatus
ALTER TABLE UserStatus
    ADD CONSTRAINT userStatus_PK PRIMARY KEY (userStatusKey),
    CONSTRAINT userStatus_name_UN UNIQUE (userStatusName)
;

-- UserStatusChange
ALTER TABLE UserStatusChange
    ADD CONSTRAINT userStatusChange_PK PRIMARY KEY (userStatusChangeKey)
;

-- PostStatus
ALTER TABLE PostStatus
    ADD CONSTRAINT postStatus_PK PRIMARY KEY (postStatusKey),
    CONSTRAINT postStatus_name_UN UNIQUE (postStatusName)
;

-- PostStatusChange
ALTER TABLE PostStatusChange
    ADD CONSTRAINT postStatusChange_PK PRIMARY KEY (postStatusChangeKey)
;

-- Post
ALTER TABLE Post
    ADD CONSTRAINT post_PK PRIMARY KEY (postKey)
;

-- Address
ALTER TABLE Address
    ADD CONSTRAINT address_PK PRIMARY KEY (addressKey)
;

-- Country
ALTER TABLE Country
    ADD CONSTRAINT country_PK PRIMARY KEY (countryKey),
    CONSTRAINT country_name_UN UNIQUE (countryName)
;

-- City
ALTER TABLE City
    ADD CONSTRAINT city_PK PRIMARY KEY (cityKey),
    CONSTRAINT city_name_UN UNIQUE (cityName)
;

-- PaymentMethod
ALTER TABLE PaymentMethod
    ADD CONSTRAINT paymentMethod_PK PRIMARY KEY (paymentMethodKey),
    CONSTRAINT paymentMethod_name_UN UNIQUE (paymentMethodName)
;

-- PaymentStatus
ALTER TABLE PaymentStatus
    ADD CONSTRAINT paymentStatus_PK PRIMARY KEY (paymentStatusKey),
    CONSTRAINT paymentStatus_name_UN UNIQUE (paymentStatusName)
;

-- PaymentStatusChange
ALTER TABLE PaymentStatusChange
    ADD CONSTRAINT paymentStatusChange_PK PRIMARY KEY (paymentStatusChangeKey)
;

-- Payment
ALTER TABLE Payment
    ADD CONSTRAINT payment_PK PRIMARY KEY (paymentKey)
;

-- ReservationStatus
ALTER TABLE ReservationStatus
    ADD CONSTRAINT reservationStatus_PK PRIMARY KEY (reservationStatusKey),
    CONSTRAINT reservationStatus_name_UN UNIQUE (reservationStatusName)
;

-- ReservationStatusChange
ALTER TABLE ReservationStatusChange
    ADD CONSTRAINT reservationStatusChange_PK PRIMARY KEY (reservationStatusChangeKey)
;

-- Reservation
ALTER TABLE Reservation
    ADD CONSTRAINT reservation_PK PRIMARY KEY (reservationKey)
;

-- Role
ALTER TABLE Role
    ADD CONSTRAINT role_PK PRIMARY KEY (roleKey),
    CONSTRAINT role_name_UQ UNIQUE (roleName)
;

-- UserRole
ALTER TABLE UserRole
     ADD CONSTRAINT userRole_PK PRIMARY KEY (userRoleKey)
;
-- Car
ALTER TABLE Car
    ADD CONSTRAINT car_user_FK FOREIGN KEY (UserKey) REFERENCES "user"(UserKey),
    CONSTRAINT car_carColor_FK FOREIGN KEY (carColorKey) REFERENCES CarColor(carColorKey),
    CONSTRAINT car_carMark_FK FOREIGN KEY (carMarkKey) REFERENCES CarMark(carMarkKey),
    CONSTRAINT car_carType_FK FOREIGN KEY (carTypeKey) REFERENCES CarType(carTypeKey)
;

-- Post
ALTER TABLE Post
    ADD CONSTRAINT post_car_FK FOREIGN KEY (carKey) REFERENCES Car(carKey),
    CONSTRAINT post_arrivalAddress_FK FOREIGN KEY (arrivalAddressKey) REFERENCES Address(addressKey),
    CONSTRAINT post_departureAddress_FK FOREIGN KEY (departureAddressKey) REFERENCES Address(addressKey)
;

-- PostStatusChange
ALTER TABLE PostStatusChange
    ADD CONSTRAINT postStatusChange_post_FK FOREIGN KEY (postKey) REFERENCES Post(postKey) ON DELETE CASCADE,
    CONSTRAINT postStatusChange_postStatus_FK FOREIGN KEY (postStatusKey) REFERENCES PostStatus(postStatusKey)
;

-- Address
ALTER TABLE Address
    ADD CONSTRAINT address_city_FK FOREIGN KEY (cityKey) REFERENCES City(cityKey)
;

-- City
ALTER TABLE City
    ADD CONSTRAINT city_country_FK FOREIGN KEY (countryKey) REFERENCES Country(countryKey) ON DELETE CASCADE
;

-- Payment
ALTER TABLE Payment
    ADD CONSTRAINT payment_paymentMethod_FK FOREIGN KEY (paymentMethodKey) REFERENCES PaymentMethod(paymentMethodKey),
    CONSTRAINT payment_reservation_FK FOREIGN KEY (reservationKey) REFERENCES Reservation(reservationKey)
;

-- PaymentStatusChange
ALTER TABLE PaymentStatusChange
    ADD CONSTRAINT paymentStatusChange_payment_FK FOREIGN KEY (paymentKey) REFERENCES Payment(paymentKey) ON DELETE CASCADE,
    CONSTRAINT paymentStatusChange_paymentStatus_FK FOREIGN KEY (paymentStatusKey) REFERENCES PaymentStatus(paymentStatusKey)
;

-- Reservation
ALTER TABLE Reservation
    ADD CONSTRAINT reservation_post_FK FOREIGN KEY (postKey) REFERENCES Post(postKey),
    CONSTRAINT reservation_user_FK FOREIGN KEY (UserKey) REFERENCES "user"(UserKey)
;

-- ReservationStatusChange
ALTER TABLE ReservationStatusChange
    ADD CONSTRAINT reservationStatusChange_reservation_FK FOREIGN KEY (reservationKey) REFERENCES Reservation(reservationKey) ON DELETE CASCADE,
    CONSTRAINT reservationStatusChange_reservationStatus_FK FOREIGN KEY (reservationStatusKey) REFERENCES ReservationStatus(reservationStatusKey)
;

-- User
ALTER TABLE "User"
    ADD CONSTRAINT user_address_FK FOREIGN KEY (addressKey) REFERENCES Address(addressKey)
;

-- UserStatusChange
ALTER TABLE UserStatusChange
    ADD CONSTRAINT userStatusChange_user_FK FOREIGN KEY (userKey) REFERENCES "user"(userKey) ON DELETE CASCADE,
    CONSTRAINT userStatusChange_userStatus_FK FOREIGN KEY (userStatusKey) REFERENCES UserStatus(userStatusKey)
;

-- UserRole
ALTER TABLE UserRole
    ADD CONSTRAINT userRole_user_FK FOREIGN KEY (userKey) REFERENCES "user"(userKey),
    CONSTRAINT userRole_role_FK FOREIGN KEY (roleKey) REFERENCES Role(roleKey)
;
-- CarColor (CarColorType)
INSERT INTO CarColor (carColorName) VALUES 
    ('Red'),
    ('Blue'),
    ('Navy blue'),
    ('White'),
    ('Orange')
;

-- CarMark
INSERT INTO CarMark (carMarkName) VALUES
    ('Chrysler'),
    ('Mazda'),
    ('Mercedes'),
    ('Vauxhall'),
    ('Ford')
;

-- CarType
INSERT INTO CarType (carTypeName) VALUES
    ('Passenger car'),
    ('Bus'),
    ('Limousine'),
    ('Van'),
    ('Truck')
;

-- Country
INSERT INTO Country (countryName) VALUES
    ('Poland'),
    ('Germany'),
    ('Belarus'),
    ('Ukraine'),
    ('Czech Republic')
;

-- City (Country)
INSERT INTO City (cityName, countryKey) VALUES
    ('Warsaw', 1),
    ('Lublin', 1),
    ('Cracow', 1),
    ('Ostrava', 5),
    ('Prague', 5)
;

-- Address (City) //with flatNumber
INSERT INTO Address (postCode, street, houseNumber, flatNumber, cityKey) VALUES 
    ('20501', 'Nadbystrzycka', '45', '11', 2),
    ('04365', 'Wiatraczna', '11', '56', 1),
    ('04855', 'Bajkowa', '76', '101', 1),
    ('70200', 'Subertova', '10', '2', 4)
;

-- Address (City) //without flatNumber
INSERT INTO Address (postCode, street, houseNumber, cityKey) VALUES 
    ('20533', 'Romantyczna', '32', 2),
    ('20016', 'Narutowicza', '7', 2),
    ('04081', 'Czapelska', '143B', 1),
    ('30348', 'Drukarska', '211', 3),
    ('70200', 'Puchmajerova', '2', 4),
    ( '11901', 'Goldenlane', '9', 5)
;

-- UserStatus //without userStatusDescription
INSERT INTO UserStatus (userStatusName) VALUES 
    ('Active'),
    ('Restricted'),
    ('Blocked'),
    ('Waiting')
;

-- UserStatus //with userStatusDescription
INSERT INTO UserStatus (userStatusName, userStatusDescription) VALUES 
    ('Disabled', 'Account is no longer accessible')  
;

-- User (Address)
INSERT INTO "User" (username, hashedPassword, salt, email, firstname, surname, dateOfBirth, phoneNumber, addressKey) VALUES 
    ('kamilcinner', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'kamilcinner@blabla.car', 'Kamil', 'Cinner',
        CAST('01-01-1974' AS DATE), '482659314', 1),

    ('longBow137', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'longBow137@blabla.car', 'Legolas', 'Legolas',
        CAST('01-01-1974' AS DATE), '206489451', 2),

    ('sherman123', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'sherman123@blabla.car', 'Sherlock', 'Holmes',
        CAST('01-01-1974' AS DATE), '051095714', 3),

    ('magdalenalenart', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'magdalenalenart@blabla.car', 'Magdalena', 'Lenart',
        CAST('01-01-1974' AS DATE), '275629056', 4),

    ('adamlipinski', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'adamlipinski@blabla.car', 'Adam', 'Lipiński',
        CAST('01-01-1974' AS DATE), '018365932', 5)
;

-- UserStatusChange (User, UserStatus)
INSERT INTO UserStatusChange (changeDateTime, userKey, userStatusKey) VALUES
    ('2021-01-03 17:38:00', 1, 5),
    ('2021-01-03 17:39:00', 2, 5),
    ('2021-01-03 17:40:00', 3, 5),
    ('2021-01-03 17:41:00', 4, 5),
    ('2021-01-03 17:42:00', 5, 5),
    ('2021-01-03 17:39:00', 1, 1),
    ('2021-01-03 17:40:00', 2, 1),
    ('2021-01-03 17:41:00', 3, 1),
    ('2021-01-03 17:42:00', 4, 1),
    ('2021-01-03 17:43:00', 5, 1)
;

-- Car (CarMark, CarColor, User)
INSERT INTO Car (regNumber, prodYear, seatsCount, userKey, carMarkKey, model, carColorKey, carTypeKey) VALUES
    ('WA84P23', '2002', 4, 1, 5, 'Explorer', 2, 1),
    ('KR2J614', '2005', 4, 2, 2, 'CX-30', 2, 1),
    ('LU93P2S', '2010', 4, 3, 2, 'CX-8', 1, 1),
    ('WA12E34', '2012', 6, 4, 2, 'MPV', 3, 4),
    ('WA23ER4', '2004', 4, 5, 5, 'Edge', 1, 1)
;

-- PostStatus
INSERT INTO PostStatus (postStatusName) VALUES
    ('Active'),
    ('Finished'),
    ('Blocked'),
    ('Full'),
    ('Waiting'),
    ('Canceled')
;

-- Post (Car, Address)
INSERT INTO Post (departureDateTime, arrivalDateTime, seatsCount, seatPrice, departureAddressKey, arrivalAddressKey, carKey) VALUES
    ('2021-02-01 17:00:00', '2021-02-01 19:20:00', 4, 30.50, 1, 6, 1),
    ('2021-02-05 08:00:00', '2021-02-05 13:00:00', 2, 25.90, 2, 7, 2),
    ('2021-02-11 14:30:00', '2021-02-11 19:00:00', 6, 130.00, 4, 8, 4),
    ('2021-02-12 07:30:00', '2021-02-12 12:30:00', 1, 150.00, 3, 9, 3),
    ('2021-02-22 06:00:00', '2021-02-22 13:20:00', 4, 150.50, 5, 10, 5)
;

-- PostStatusChange (Post, PostStatus)
INSERT INTO PostStatusChange (changeDateTime, postKey, postStatusKey) VALUES
    ('2021-01-03 19:37:11', 1, 5),
    ('2021-01-03 21:14:31', 2, 5),
    ('2021-01-04 08:45:41', 3, 5),
    ('2021-01-04 08:47:25', 4, 5),
    ('2021-01-04 15:22:32', 5, 5),
    ('2021-01-04 15:23:56', 5, 6),
    ('2021-01-03 19:38:19', 1, 1),
    ('2021-01-03 21:16:44', 2, 1),
    ('2021-01-04 08:46:59', 3, 1),
    ('2021-01-04 08:49:11', 4, 1),
    ('2021-01-06 09:50:31', 4, 4)
;

-- ReservationStatus
INSERT INTO ReservationStatus ( reservationStatusName) VALUES
    ('Canceled'),
    ('Waiting'),
    ('Rejected'),
    ('Confirmed')
;

-- Reservation (Post, User)
INSERT INTO Reservation (reservationDateTime, seatsCount, postKey, userKey) VALUES
    ('2021-01-05 03:02:01', 2, 1, 1),
    ('2021-01-07 21:00:04', 1, 1, 2),
    ('2021-01-09 13:51:31', 4, 3, 3),
    ('2021-01-11 16:52:31', 1, 2, 4),
    ('2021-01-17 18:54:31', 1, 4, 5)
;

-- ReservationStatusChange (Reservation, ReservationStatus)
INSERT INTO ReservationStatusChange (changeDateTime, reservationKey, reservationStatusKey) VALUES
    ('2021-01-05 03:02:01', 1, 2),
    ('2021-01-07 21:00:04', 2, 2),
    ('2021-01-09 13:51:31', 3, 2),
    ('2021-01-11 16:52:31', 4, 2),
    ('2021-01-17 18:54:31', 5, 2)
;

-- PaymentMethod
INSERT INTO PaymentMethod (paymentMethodName) VALUES
    ('Blik'),
    ('Visa'),
    ('MasterCard'),
    ('PayPal'),
    ('Bank Transfer')
;

-- PaymentStatus
INSERT INTO PaymentStatus (paymentStatusName) VALUES 
    ('Finished'),
    ('Waiting'),
    ('Canceled')
;

-- Payment (PaymentMethod, Reservation)
INSERT INTO Payment (totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey) VALUES
    (61.00, 'sdfsftstyft238y4324hb23h423h4v23h4dv234d', 1, 1),
    (30.50, '234dt23sdfsftstyf23h423h4v23h4dv8y4324hb', 2, 2),
    (520.00, 'tyft238y4324hb23sdfsftsh423h4v23h4dv234d', 3, 3),
    (25.90, 'hbdv23h423h4v23h4sdfsftstyft238y4324234d', 4, 4),
    (150.00, 'yft238y4324hb23h423h4vsdfsftst23h4dv234d', 5, 5)
;

-- PaymentStatusChange (Payment, PaymentStatus)
INSERT INTO PaymentStatusChange (changeDateTime, paymentKey, paymentStatusKey) VALUES
    ('2021-01-05 03:12:01', 1, 2),
    ('2021-01-07 21:10:04', 2, 2),
    ('2021-01-09 14:01:31', 3, 2),
    ('2021-01-11 17:02:31', 4, 2),
    ('2021-01-17 19:04:31', 5, 2)
;

-- Role
INSERT INTO Role (rolename) VALUES
    ('DRIVER'),
    ('PASSENGER'),
    ('ADMIN')
;

-- UserRole
INSERT INTO UserRole (userKey, roleKey) VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 2),
    (3, 1),
    (3, 2),
    (4, 1),
    (4, 2),
    (5, 1),
    (5, 2)
;
