-- CarColorType
INSERT ALL
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (1, 'Metalic')
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (2, 'Shiny')
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (3, 'Mat')
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (4, 'Opalescent')
    INTO CarColorType (carColorTypeKey, carColorTypeName) VALUES (5, 'Custom')
SELECT * FROM DUAL;

-- CarColor
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
    INTO CarMark (carMarkKey, carMarkName) VALUES (1, 'Mazda')
    INTO CarMark (carMarkKey, carMarkName) VALUES (1, 'Mercedes')
    INTO CarMark (carMarkKey, carMarkName) VALUES (1, 'Vauxhall')
    INTO CarMark (carMarkKey, carMarkName) VALUES (1, 'Ford')
SELECT * FROM DUAL;

-- Country
INSERT ALL

SELECT * FROM DUAL;

-- City
INSERT ALL

SELECT * FROM DUAL;

-- Address
INSERT ALL

SELECT * FROM DUAL;

-- UserStatus
INSERT ALL

SELECT * FROM DUAL;

-- UserStatusHistory
INSERT ALL

SELECT * FROM DUAL;

-- User
INSERT ALL

SELECT * FROM DUAL;

-- Car
INSERT ALL

SELECT * FROM DUAL;

-- PostStatus
INSERT ALL

SELECT * FROM DUAL;

-- PostStatusHistory
INSERT ALL

SELECT * FROM DUAL;

-- Post
INSERT ALL

SELECT * FROM DUAL;

-- PaymentMethod
INSERT ALL

SELECT * FROM DUAL;

-- PaymentStatus
INSERT ALL

SELECT * FROM DUAL;

-- Payment
INSERT ALL

SELECT * FROM DUAL;

-- Travel
INSERT ALL

SELECT * FROM DUAL;
