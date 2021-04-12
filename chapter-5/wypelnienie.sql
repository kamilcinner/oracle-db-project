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
INSERT INTO `User` (username, hashedPassword, salt, email, firstname, surname, dateOfBirth, phoneNumber, addressKey) VALUES 
    ('kamilcinner', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'kamilcinner@blabla.car', 'Kamil', 'Cinner',
        STR_TO_DATE('01-01-1974', '%d-%m-%Y'), '482659314', 1),

    ('longBow137', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'longBow137@blabla.car', 'Legolas', 'Legolas',
        STR_TO_DATE('01-01-1974', '%d-%m-%Y'), '206489451', 2),

    ('sherman123', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'sherman123@blabla.car', 'Sherlock', 'Holmes',
        STR_TO_DATE('01-01-1974', '%d-%m-%Y'), '051095714', 3),

    ('magdalenalenart', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'magdalenalenart@blabla.car', 'Magdalena', 'Lenart',
        STR_TO_DATE('01-01-1974', '%d-%m-%Y'), '275629056', 4),

    ('adamlipinski', '08f56771b0f2ad3281f6bcd4c2221e32a62d312c16bf7d824f0f6f0cf458eb86',
        'dfsdfsdfsd8fs8df58sdfsdfs43433231fsdf23131231', 'adamlipinski@blabla.car', 'Adam', 'Lipiński',
        STR_TO_DATE('01-01-1974', '%d-%m-%Y'), '018365932', 5),
;

-- UserStatusHistory (User, UserStatus)
INSERT INTO UserStatusHistory (changeDateTime, userKey, userStatusKey) VALUES
    (to_timestamp('03-01-2021 17:38:00', 'DD-MM-YYYY HH24:MI:SS'), 1, 5),
    (to_timestamp('03-01-2021 17:39:00', 'DD-MM-YYYY HH24:MI:SS'), 2, 5),
    (to_timestamp('03-01-2021 17:40:00', 'DD-MM-YYYY HH24:MI:SS'), 3, 5),
    (to_timestamp('03-01-2021 17:41:00', 'DD-MM-YYYY HH24:MI:SS'), 4, 5),
    (to_timestamp('03-01-2021 17:42:00', 'DD-MM-YYYY HH24:MI:SS'), 5, 5),
    (to_timestamp('03-01-2021 17:39:00', 'DD-MM-YYYY HH24:MI:SS'), 1, 1),
    (to_timestamp('03-01-2021 17:40:00', 'DD-MM-YYYY HH24:MI:SS'), 2, 1),
    (to_timestamp('03-01-2021 17:41:00', 'DD-MM-YYYY HH24:MI:SS'), 3, 1),
    (to_timestamp('03-01-2021 17:42:00', 'DD-MM-YYYY HH24:MI:SS'), 4, 1),
    (to_timestamp('03-01-2021 17:43:00', 'DD-MM-YYYY HH24:MI:SS'), 5, 1)
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
INSERT INTO PostStatus (postStatusKey, postStatusName) VALUES
    ('Active'),
    ('Finished'),
    ('Blocked'),
    ('Full'),
    ('Waiting'),
    ('Canceled')
;

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
INSERT INTO Reservation (reservationDateTime, seatsCount, postKey, userKey) VALUES
    (to_timestamp('05-01-2021 03:02:01', 'DD-MM-YYYY HH24:MI:SS'), 2, 1, 1),
    (to_timestamp('07-01-2021 21:00:04', 'DD-MM-YYYY HH24:MI:SS'), 1, 1, 2),
    (to_timestamp('09-01-2021 13:51:31', 'DD-MM-YYYY HH24:MI:SS'), 4, 3, 3),
    (to_timestamp('11-01-2021 16:52:31', 'DD-MM-YYYY HH24:MI:SS'), 1, 2, 4),
    (to_timestamp('17-01-2021 18:54:31', 'DD-MM-YYYY HH24:MI:SS'), 1, 4, 5)
;

-- ReservationStatusHistory (Reservation, ReservationStatus)
INSERT INTO ReservationStatusHistory (changeDateTime, reservationKey, reservationStatusKey)
    (to_timestamp('05-01-2021 03:02:01', 'DD-MM-YYYY HH24:MI:SS'), 1, 2),
    (to_timestamp('07-01-2021 21:00:04', 'DD-MM-YYYY HH24:MI:SS'), 2, 2),
    (to_timestamp('09-01-2021 13:51:31', 'DD-MM-YYYY HH24:MI:SS'), 3, 2),
    (to_timestamp('11-01-2021 16:52:31', 'DD-MM-YYYY HH24:MI:SS'), 4, 2),
    (to_timestamp('17-01-2021 18:54:31', 'DD-MM-YYYY HH24:MI:SS'), 5, 2)
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
INSERT INTO Payment (totalAmount, externalPaymentNumber, paymentMethodkey, reservationkey)
    (61.00, 'sdfsftstyft238y4324hb23h423h4v23h4dv234d', 1, 1),
    (30.50, '234dt23sdfsftstyf23h423h4v23h4dv8y4324hb', 2, 2),
    (520.00, 'tyft238y4324hb23sdfsftsh423h4v23h4dv234d', 3, 3),
    (25.90, 'hbdv23h423h4v23h4sdfsftstyft238y4324234d', 4, 4),
    (150.00, 'yft238y4324hb23h423h4vsdfsftst23h4dv234d', 5, 5)
;

-- PaymentStatusHistory (Payment, PaymentStatus)
INSERT INTO PaymentStatusHistory (changeDateTime, paymentKey, paymentStatusKey)
    (to_timestamp('05-01-2021 03:12:01', 'DD-MM-YYYY HH24:MI:SS'), 1, 2),
    (to_timestamp('07-01-2021 21:10:04', 'DD-MM-YYYY HH24:MI:SS'), 2, 2),
    (to_timestamp('09-01-2021 14:01:31', 'DD-MM-YYYY HH24:MI:SS'), 3, 2),
    (to_timestamp('11-01-2021 17:02:31', 'DD-MM-YYYY HH24:MI:SS'), 4, 2),
    (to_timestamp('17-01-2021 19:04:31', 'DD-MM-YYYY HH24:MI:SS'), 5, 2)
;

-- Role
INSERT INTO `Role` (rolename) VALUES
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
