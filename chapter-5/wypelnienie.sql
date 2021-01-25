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
        to_date('01-01-1974', 'dd-mm-yyyy'), '482659314', 1)

    INTO "USER" (userKey, username, hashedPassword, salt, email,
        firstname, surname, dateOfBirth, phoneNumber, addressKey)
    VALUES (2, 'longBow137', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'longBow137@blabla.car', 'Legolas', 'Legolas',
        to_date('01-01-1974', 'dd-mm-yyyy'), '206489451', 2)

    INTO "USER" (userKey, username, hashedPassword, salt, email,
        firstname, surname, dateOfBirth, phoneNumber, addressKey)
    VALUES (3, 'sherman123', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'sherman123@blabla.car', 'Sherlock', 'Holmes',
        to_date('01-01-1974', 'dd-mm-yyyy'), '051095714', 3)

    INTO "USER" (userKey, username, hashedPassword, salt, email,
        firstname, surname, dateOfBirth, phoneNumber, addressKey)
    VALUES (4, 'magdalenalenart', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'magdalenalenart@blabla.car', 'Magdalena', 'Lenart',
        to_date('01-01-1974', 'dd-mm-yyyy'), '275629056', 4)

    INTO "USER" (userKey, username, hashedPassword, salt, email,
        firstname, surname, dateOfBirth, phoneNumber, addressKey)
    VALUES (5, 'adamlipinski', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'adamlipinski@blabla.car', 'Adam', 'Lipiński',
        to_date('01-01-1974', 'dd-mm-yyyy'), '018365932', 5)
SELECT * FROM DUAL;

-- UserStatusHistory (User, UserStatus)
INSERT ALL
    INTO UserStatusHistory (userStatusHistoryKey, changeDateTime, userKey, userStatusKey)
    VALUES (1, '25-01-2021 17:38:00', 1, 1)
SELECT * FROM DUAL;

-- Car (CarMark, CarColor, User)
INSERT ALL

SELECT * FROM DUAL;

-- PostStatus
INSERT ALL
    INTO PostStatus (postStatusKey, postStatusName) VALUES (1, 'Active')
    INTO PostStatus (postStatusKey, postStatusName) VALUES (2, 'Inactive')
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

SELECT * FROM DUAL;

-- Reservation (Post, User)
INSERT ALL

SELECT * FROM DUAL;

-- ReservationStatusHistory (Reservation, ReservationStatus)
INSERT ALL

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
    INTO PaymentStatus (paymentStatusKey, paymentStatusName) VALUES (2, 'Canceled')
    INTO PaymentStatus (paymentStatusKey, paymentStatusName) VALUES (3, 'In progress')
    INTO PaymentStatus (paymentStatusKey, paymentStatusName) VALUES (4, 'Waiting')
    INTO PaymentStatus (paymentStatusKey, paymentStatusName) VALUES (5, 'New')
SELECT * FROM DUAL;

-- Payment (PaymentStatus, PaymentMethod, Reservation)
INSERT ALL

SELECT * FROM DUAL;
