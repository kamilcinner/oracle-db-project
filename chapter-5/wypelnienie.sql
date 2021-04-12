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
    ('Ukraine'),,
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

-- Address (City)
INSERT ALL
    INTO Address (addressKey, postCode, street, houseNumber, flatNumber, cityKey) VALUES (1, '20501', 'Nadbystrzycka', '45', '11', 2)
    INTO Address (addressKey, postCode, street, houseNumber, cityKey) VALUES (2, '20533', 'Romantyczna', '32', 2)
    INTO Address (addressKey, postCode, street, houseNumber, cityKey) VALUES (3, '20016', 'Narutowicza', '7', 2)
    INTO Address (addressKey, postCode, street, houseNumber, cityKey) VALUES (4, '04081', 'Czapelska', '143B', 1)
    INTO Address (addressKey, postCode, street, houseNumber, flatNumber, cityKey) VALUES (5, '04365', 'Wiatraczna', '11', '56', 1)
    INTO Address (addressKey, postCode, street, houseNumber, flatNumber, cityKey) VALUES (6, '04855', 'Bajkowa', '76', '101', 1)
    INTO Address (addressKey, postCode, street, houseNumber, cityKey) VALUES (7, '30348', 'Drukarska', '211', 3)
    INTO Address (addressKey, postCode, street, houseNumber, cityKey) VALUES (8, '70200', 'Puchmajerova', '2', 4)
    INTO Address (addressKey, postCode, street, houseNumber, flatNumber, cityKey) VALUES (9, '70200', 'Subertova', '10', '2', 4)
    INTO Address (addressKey, postCode, street, houseNumber, cityKey) VALUES (10, '11901', 'Goldenlane', '9', 5)
SELECT * FROM DUAL;

-- UserStatus
INSERT ALL
    INTO UserStatus (userStatusKey, userStatusName) VALUES (1, 'Active')
    INTO UserStatus (userStatusKey, userStatusName) VALUES (2, 'Restricted')
    INTO UserStatus (userStatusKey, userStatusName, userStatusDescription)
    VALUES (3, 'Disabled', 'Account is no longer accessible')
    INTO UserStatus (userStatusKey, userStatusName) VALUES (4, 'Blocked')
    INTO UserStatus (userStatusKey, userStatusName) VALUES (5, 'Waiting')
SELECT * FROM DUAL;

-- User (Address)
INSERT ALL
    INTO "USER" (userKey, username, hashedPassword, salt, email,
        firstname, surname, dateOfBirth, phoneNumber, addressKey)
    VALUES (1, 'kamilcinner', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'kamilcinner@blabla.car', 'Kamil', 'Cinner',
        to_date('01-01-1974', 'DD-MM-YYYY'), '482659314', 1)

    INTO "USER" (userKey, username, hashedPassword, salt, email,
        firstname, surname, dateOfBirth, phoneNumber, addressKey)
    VALUES (2, 'longBow137', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'longBow137@blabla.car', 'Legolas', 'Legolas',
        to_date('01-01-1974', 'DD-MM-YYYY'), '206489451', 2)

    INTO "USER" (userKey, username, hashedPassword, salt, email,
        firstname, surname, dateOfBirth, phoneNumber, addressKey)
    VALUES (3, 'sherman123', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'sherman123@blabla.car', 'Sherlock', 'Holmes',
        to_date('01-01-1974', 'DD-MM-YYYY'), '051095714', 3)

    INTO "USER" (userKey, username, hashedPassword, salt, email,
        firstname, surname, dateOfBirth, phoneNumber, addressKey)
    VALUES (4, 'magdalenalenart', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'magdalenalenart@blabla.car', 'Magdalena', 'Lenart',
        to_date('01-01-1974', 'DD-MM-YYYY'), '275629056', 4)

    INTO "USER" (userKey, username, hashedPassword, salt, email,
        firstname, surname, dateOfBirth, phoneNumber, addressKey)
    VALUES (5, 'adamlipinski', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'adamlipinski@blabla.car', 'Adam', 'Lipiński',
        to_date('01-01-1974', 'DD-MM-YYYY'), '018365932', 5)
SELECT * FROM DUAL;

-- UserStatusHistory (User, UserStatus)
INSERT ALL
    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (1, to_timestamp('03-01-2021 17:38:00', 'DD-MM-YYYY HH24:MI:SS'), 1, 5)
    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (6, to_timestamp('03-01-2021 17:39:00', 'DD-MM-YYYY HH24:MI:SS'), 1, 1)

    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (2, to_timestamp('03-01-2021 17:39:00', 'DD-MM-YYYY HH24:MI:SS'), 2, 5)
    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (7, to_timestamp('03-01-2021 17:40:00', 'DD-MM-YYYY HH24:MI:SS'), 2, 1)

    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (3, to_timestamp('03-01-2021 17:40:00', 'DD-MM-YYYY HH24:MI:SS'), 3, 5)
    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (8, to_timestamp('03-01-2021 17:41:00', 'DD-MM-YYYY HH24:MI:SS'), 3, 1)

    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (4, to_timestamp('03-01-2021 17:41:00', 'DD-MM-YYYY HH24:MI:SS'), 4, 5)
    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (9, to_timestamp('03-01-2021 17:42:00', 'DD-MM-YYYY HH24:MI:SS'), 4, 1)

    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (5, to_timestamp('03-01-2021 17:42:00', 'DD-MM-YYYY HH24:MI:SS'), 5, 5)
    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (10, to_timestamp('03-01-2021 17:43:00', 'DD-MM-YYYY HH24:MI:SS'), 5, 1)
SELECT * FROM DUAL;

-- Car (CarMark, CarColor, User)
INSERT ALL
    INTO Car (carKey, regNumber, prodYear, seatsCount, userKey, carMarkKey, model, carColorKey, carTypeKey) 
    VALUES (1, 'WA84P23', '2002', 4, 1, 5, 'Explorer', 2, 1)

    INTO Car (carKey, regNumber, prodYear, seatsCount, userKey, carMarkKey, model, carColorKey, carTypeKey) 
    VALUES (2, 'KR2J614', '2005', 4, 2, 2, 'CX-30', 2, 1)

    INTO Car (carKey, regNumber, prodYear, seatsCount, userKey, carMarkKey, model, carColorKey, carTypeKey) 
    VALUES (3, 'LU93P2S', '2010', 4, 3, 2, 'CX-8', 1, 1)

    INTO Car (carKey, regNumber, prodYear, seatsCount, userKey, carMarkKey, model, carColorKey, carTypeKey) 
    VALUES (4, 'WA12E34', '2012', 6, 4, 2, 'MPV', 3, 4)

    INTO Car (carKey, regNumber, prodYear, seatsCount, userKey, carMarkKey, model, carColorKey, carTypeKey) 
    VALUES (5, 'WA23ER4', '2004', 4, 5, 5, 'Edge', 1, 1)
SELECT * FROM DUAL;

-- PostStatus
INSERT ALL
    INTO PostStatus (postStatusKey, postStatusName) VALUES (1, 'Active')
    INTO PostStatus (postStatusKey, postStatusName) VALUES (2, 'Finished')
    INTO PostStatus (postStatusKey, postStatusName) VALUES (3, 'Blocked')
    INTO PostStatus (postStatusKey, postStatusName) VALUES (4, 'Full')
    INTO PostStatus (postStatusKey, postStatusName) VALUES (5, 'Waiting')
    INTO PostStatus (postStatusKey, postStatusName) VALUES (6, 'Canceled')
SELECT * FROM DUAL;

-- Post (Car, Address)
INSERT INTO Post (departureDateTime, arrivalDateTime, seatsCount, seatPrice, departureAddressKey, arrivalAddressKey, carKey) VALUES
    (to_timestamp('01-02-2021 17:00:00', 'DD-MM-YYYY HH24:MI:SS'), to_timestamp('01-02-2021 19:20:00', 'DD-MM-YYYY HH24:MI:SS'), 4, 30.50, 1, 6, 1),
    (to_timestamp('05-02-2021 08:00:00', 'DD-MM-YYYY HH24:MI:SS'), to_timestamp('05-02-2021 13:00:00', 'DD-MM-YYYY HH24:MI:SS'), 2, 25.90, 2, 7, 2),
    (to_timestamp('11-02-2021 14:30:00', 'DD-MM-YYYY HH24:MI:SS'), to_timestamp('11-02-2021 19:00:00', 'DD-MM-YYYY HH24:MI:SS'), 6, 130.00, 4, 8, 4),
    (to_timestamp('12-02-2021 07:30:00', 'DD-MM-YYYY HH24:MI:SS'), to_timestamp('12-02-2021 12:30:00', 'DD-MM-YYYY HH24:MI:SS'), 1, 150.00, 3, 9, 3),
    (to_timestamp('22-02-2021 06:00:00', 'DD-MM-YYYY HH24:MI:SS'), to_timestamp('22-02-2021 13:20:00', 'DD-MM-YYYY HH24:MI:SS'), 4, 150.50, 5, 10, 5)
SELECT * FROM DUAL;

-- PostStatusHistory (Post, PostStatus)
INSERT INTO PostStatusHistory (changeDateTime, postKey, postStatusKey) VALUES
    (to_timestamp('03-01-2021 19:37:11', 'DD-MM-YYYY HH24:MI:SS'), 1, 5),
    (to_timestamp('03-01-2021 21:14:31', 'DD-MM-YYYY HH24:MI:SS'), 2, 5),
    (to_timestamp('04-01-2021 08:45:41', 'DD-MM-YYYY HH24:MI:SS'), 3, 5),
    (to_timestamp('04-01-2021 08:47:25', 'DD-MM-YYYY HH24:MI:SS'), 4, 5),
    (to_timestamp('04-01-2021 15:22:32', 'DD-MM-YYYY HH24:MI:SS'), 5, 5),
    (to_timestamp('04-01-2021 15:23:56', 'DD-MM-YYYY HH24:MI:SS'), 5, 6),
    (to_timestamp('03-01-2021 19:38:19', 'DD-MM-YYYY HH24:MI:SS'), 1, 1),
    (to_timestamp('03-01-2021 21:16:44', 'DD-MM-YYYY HH24:MI:SS'), 2, 1),
    (to_timestamp('04-01-2021 08:46:59', 'DD-MM-YYYY HH24:MI:SS'), 3, 1),
    (to_timestamp('04-01-2021 08:49:11', 'DD-MM-YYYY HH24:MI:SS'), 4, 1),
    (to_timestamp('06-01-2021 09:50:31', 'DD-MM-YYYY HH24:MI:SS'), 4, 4)
;

-- ReservationStatus
INSERT INTO ReservationStatus ( reservationStatusName)
    ('Canceled'),
    ('Waiting'),
    ('Rejected'),
    ('Confirmed'),
;

-- Reservation (Post, User)
INSERT ALL
    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (1, to_timestamp('05-01-2021 03:02:01', 'DD-MM-YYYY HH24:MI:SS'), 2, 1, 1)

    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (2, to_timestamp('07-01-2021 21:00:04', 'DD-MM-YYYY HH24:MI:SS'), 1, 1, 2)

    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (3, to_timestamp('09-01-2021 13:51:31', 'DD-MM-YYYY HH24:MI:SS'), 4, 3, 3)

    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (4, to_timestamp('11-01-2021 16:52:31', 'DD-MM-YYYY HH24:MI:SS'), 1, 2, 4)

    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (5, to_timestamp('17-01-2021 18:54:31', 'DD-MM-YYYY HH24:MI:SS'), 1, 4, 5)
SELECT * FROM DUAL;

-- ReservationStatusHistory (Reservation, ReservationStatus)
INSERT ALL
    INTO ReservationStatusHistory (reservationStatusHistoryKey, changeDateTime,
    reservationKey, reservationStatusKey)
    VALUES (1, to_timestamp('05-01-2021 03:02:01', 'DD-MM-YYYY HH24:MI:SS'), 1, 2)

    INTO ReservationStatusHistory (reservationStatusHistoryKey, changeDateTime,
    reservationKey, reservationStatusKey)
    VALUES (2, to_timestamp('07-01-2021 21:00:04', 'DD-MM-YYYY HH24:MI:SS'), 2, 2)

    INTO ReservationStatusHistory (reservationStatusHistoryKey, changeDateTime,
    reservationKey, reservationStatusKey)
    VALUES (3, to_timestamp('09-01-2021 13:51:31', 'DD-MM-YYYY HH24:MI:SS'), 3, 2)

    INTO ReservationStatusHistory (reservationStatusHistoryKey, changeDateTime,
    reservationKey, reservationStatusKey)
    VALUES (4, to_timestamp('11-01-2021 16:52:31', 'DD-MM-YYYY HH24:MI:SS'), 4, 2)

    INTO ReservationStatusHistory (reservationStatusHistoryKey, changeDateTime,
    reservationKey, reservationStatusKey)
    VALUES (5, to_timestamp('17-01-2021 18:54:31', 'DD-MM-YYYY HH24:MI:SS'), 5, 2)
SELECT * FROM DUAL;

-- PaymentMethod
INSERT ALL
    INTO PaymentMethod (paymentMethodKey, paymentMethodName) VALUES (1, 'Blik')
    INTO PaymentMethod (paymentMethodKey, paymentMethodName) VALUES (2, 'Visa')
    INTO PaymentMethod (paymentMethodKey, paymentMethodName) VALUES (3, 'MasterCard')
    INTO PaymentMethod (paymentMethodKey, paymentMethodName) VALUES (4, 'PayPal')
    INTO PaymentMethod (paymentMethodKey, paymentMethodName) VALUES (5, 'Bank Transfer')
SELECT * FROM DUAL;

-- PaymentStatus
INSERT ALL
    INTO PaymentStatus (paymentStatusKey, paymentStatusName) VALUES (1, 'Finished')
    INTO PaymentStatus (paymentStatusKey, paymentStatusName) VALUES (2, 'Waiting')
    INTO PaymentStatus (paymentStatusKey, paymentStatusName) VALUES (3, 'Canceled')
SELECT * FROM DUAL;

-- Payment (PaymentMethod, Reservation)
INSERT ALL
    INTO Payment (paymentKey, totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    VALUES (1, 61.00, 'sdfsftstyft238y4324hb23h423h4v23h4dv234d', 1, 1)

    INTO Payment (paymentKey, totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    VALUES (2, 30.50, '234dt23sdfsftstyf23h423h4v23h4dv8y4324hb', 2, 2)

    INTO Payment (paymentKey, totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    VALUES (3, 520.00, 'tyft238y4324hb23sdfsftsh423h4v23h4dv234d', 3, 3)

    INTO Payment (paymentKey, totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    VALUES (4, 25.90, 'hbdv23h423h4v23h4sdfsftstyft238y4324234d', 4, 4)

    INTO Payment (paymentKey, totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    VALUES (5, 150.00, 'yft238y4324hb23h423h4vsdfsftst23h4dv234d', 5, 5)
SELECT * FROM DUAL;

-- PaymentStatusHistory (Payment, PaymentStatus)
INSERT ALL
    INTO PaymentStatusHistory (paymentStatusHistoryKey, changeDateTime, paymentKey, paymentStatusKey)
    VALUES (1, to_timestamp('05-01-2021 03:12:01', 'DD-MM-YYYY HH24:MI:SS'), 1, 2)

    INTO PaymentStatusHistory (paymentStatusHistoryKey, changeDateTime, paymentKey, paymentStatusKey)
    VALUES (2, to_timestamp('07-01-2021 21:10:04', 'DD-MM-YYYY HH24:MI:SS'), 2, 2)

    INTO PaymentStatusHistory (paymentStatusHistoryKey, changeDateTime, paymentKey, paymentStatusKey)
    VALUES (3, to_timestamp('09-01-2021 14:01:31', 'DD-MM-YYYY HH24:MI:SS'), 3, 2)

    INTO PaymentStatusHistory (paymentStatusHistoryKey, changeDateTime, paymentKey, paymentStatusKey)
    VALUES (4, to_timestamp('11-01-2021 17:02:31', 'DD-MM-YYYY HH24:MI:SS'), 4, 2)

    INTO PaymentStatusHistory (paymentStatusHistoryKey, changeDateTime, paymentKey, paymentStatusKey)
    VALUES (5, to_timestamp('17-01-2021 19:04:31', 'DD-MM-YYYY HH24:MI:SS'), 5, 2)
SELECT * FROM DUAL;

-- Role
INSERT ALL
    INTO "ROLE" (roleKey, rolename) VALUES (1, 'DRIVER')
    INTO "ROLE" (roleKey, rolename) VALUES (2, 'PASSENGER')
    INTO "ROLE" (roleKey, rolename) VALUES (3, 'ADMIN')
SELECT * FROM DUAL;

-- UserRole
INSERT ALL
    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (1, 1, 1)
    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (2, 1, 2)

    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (3, 2, 1)
    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (4, 2, 2)

    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (5, 3, 1)
    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (6, 3, 2)

    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (7, 4, 1)
    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (8, 4, 2)

    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (9, 5, 1)
    INTO UserRole (userRoleKey, userKey, roleKey) VALUES (10, 5, 2)
SELECT * FROM DUAL;
