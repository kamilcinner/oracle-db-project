-- CarColor
CREATE INDEX carColor_carColorType_IDX ON carColor (carColorTypeKey);

-- CarColorType


-- CarMark


-- CarType


-- Car
CREATE INDEX car_carMark_IDX ON Car (carMarkKey);
CREATE INDEX car_carColor_IDX ON Car (carColorKey);
CREATE INDEX car_carType_IDX ON Car (carTypeKey);
CREATE INDEX car_user_IDX ON Car (userKey);

-- User
CREATE INDEX user_firstnameSurname_IDX ON "USER" (firstname, surname);

-- UserStatus


-- UserStatusHistory
CREATE INDEX userStatusHistory_user_IDX ON UserStatusHistory (userKey);

-- PostStatus


-- PostStatusHistory


-- Post


-- Address
CREATE INDEX address_city_IDX ON Address (cityKey);
CREATE INDEX address_postCode_IDX ON Address (postCode);
CREATE INDEX address_street_IDX ON Address (street);

-- City
CREATE INDEX city_country_IDX ON City (countryKey);

-- Country


-- PaymentMethod


-- PaymentStatus


-- PaymentStatusHistory


-- Payment


-- ReservationStatus


-- ReservationStatusHistory


-- Reservation

