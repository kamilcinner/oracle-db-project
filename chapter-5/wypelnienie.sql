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
