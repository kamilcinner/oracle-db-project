-- CarColorType
INSERT ALL
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (1, 'Metalic')
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (2, 'Shiny')
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (3, 'Mat')
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (4, 'Opalescent')
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (5, 'Custom')
SELECT * FROM DUAL;

-- CarColor (CarColorType)
INSERT ALL
    INTO CarColor (carColorKey, carColorName, carColorTypeKey) VALUES (1, 'Red', 1)
    INTO CarColor (carColorKey, carColorName, carColorTypeKey) VALUES (2, 'Blue', 2)
    INTO CarColor (carColorKey, carColorName, carColorTypeKey) VALUES (3, 'Navy blue', 3)
    INTO CarColor (carColorKey, carColorName, carColorTypeKey) VALUES (4, 'White', 4)
    INTO CarColor (carColorKey, carColorName, carColorTypeKey) VALUES (5, 'Orange', 5)
SELECT * FROM DUAL;

-- CarMark
INSERT ALL
    INTO CarMark (carMarkKey, carMarkName) VALUES (1, 'Chrysler')
    INTO CarMark (carMarkKey, carMarkName) VALUES (2, 'Mazda')
    INTO CarMark (carMarkKey, carMarkName) VALUES (3, 'Mercedes')
    INTO CarMark (carMarkKey, carMarkName) VALUES (4, 'Vauxhall')
    INTO CarMark (carMarkKey, carMarkName) VALUES (5, 'Ford')
SELECT * FROM DUAL;

-- CarType
INSERT ALL

SELECT * FROM DUAL;

-- Country
INSERT ALL
    INTO Country (countryKey, countryName) VALUES (1, 'Poland')
    INTO Country (countryKey, countryName) VALUES (2, 'Germany')
    INTO Country (countryKey, countryName) VALUES (3, 'Belarus')
    INTO Country (countryKey, countryName) VALUES (4, 'Ukraine')
    INTO Country (countryKey, countryName) VALUES (5, 'Czech Republic')
SELECT * FROM DUAL;

-- City (Country)
INSERT ALL
    INTO City (cityKey, cityName, countryKey) VALUES (1, 'Warsaw', 1)
    INTO City (cityKey, cityName, countryKey) VALUES (2, 'Lublin', 1)
    INTO City (cityKey, cityName, countryKey) VALUES (3, 'Wroclaw', 1)
    INTO City (cityKey, cityName, countryKey) VALUES (4, 'Cracow', 1)
    INTO City (cityKey, cityName, countryKey) VALUES (5, 'Gdansk', 1)
SELECT * FROM DUAL;

-- Address (City)
INSERT ALL

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
    VALUES (1, to_timestamp('03-01-2021 17:39:00', 'DD-MM-YYYY HH24:MI:SS'), 2, 5)

    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (1, to_timestamp('03-01-2021 17:40:00', 'DD-MM-YYYY HH24:MI:SS'), 3, 5)

    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (1, to_timestamp('03-01-2021 17:41:00', 'DD-MM-YYYY HH24:MI:SS'), 4, 5)

    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (1, to_timestamp('03-01-2021 17:42:00', 'DD-MM-YYYY HH24:MI:SS'), 5, 5)
SELECT * FROM DUAL;

-- Car (CarMark, CarColor, User)
INSERT ALL

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
INSERT ALL

SELECT * FROM DUAL;

-- PostStatusHistory (Post, PostStatus)
INSERT ALL

SELECT * FROM DUAL;

-- ReservationStatus
INSERT ALL
    INTO ReservationStatus (reservationStatusKey, reservationStatusName) VALUES (1, 'Canceled')
    INTO ReservationStatus (reservationStatusKey, reservationStatusName) VALUES (2, 'Waiting')
    INTO ReservationStatus (reservationStatusKey, reservationStatusName) VALUES (3, 'Rejected')
    INTO ReservationStatus (reservationStatusKey, reservationStatusName) VALUES (4, 'Confirmed')
SELECT * FROM DUAL;

-- Reservation (Post, User)
INSERT ALL
    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (1, to_timestamp('05-01-2021 03:02:01', 'DD-MM-YYYY HH24:MI:SS', 1, 2, 1))

    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (1, to_timestamp('07-01-2021 21:00:04', 'DD-MM-YYYY HH24:MI:SS', 1, 1, 2))

    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (1, to_timestamp('09-01-2021 13:51:31', 'DD-MM-YYYY HH24:MI:SS', 1, 3, 3))

    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (1, to_timestamp('11-01-2021 16:52:31', 'DD-MM-YYYY HH24:MI:SS', 1, 5, 4))

    INTO Reservation (reservationKey, reservationDateTime, seatsCount, postKey, userKey)
    VALUES (1, to_timestamp('17-01-2021 18:54:31', 'DD-MM-YYYY HH24:MI:SS', 1, 4, 5))
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
    VALUES (1, 25.00, 'sdfsftstyft238y4324hb23h423h4v23h4dv234d', 1, 1)

    INTO Payment (paymentKey, totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    VALUES (2, 100.00, '234dt23sdfsftstyf23h423h4v23h4dv8y4324hb', 2, 2)

    INTO Payment (paymentKey, totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    VALUES (3, 27.80, 'tyft238y4324hb23sdfsftsh423h4v23h4dv234d', 3, 3)

    INTO Payment (paymentKey, totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    VALUES (4, 35.00, 'hbdv23h423h4v23h4sdfsftstyft238y4324234d', 4, 4)

    INTO Payment (paymentKey, totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    VALUES (5, 40.99, 'yft238y4324hb23h423h4vsdfsftst23h4dv234d', 5, 5)
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
