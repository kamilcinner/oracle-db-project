-- CarColor
CREATE INDEX carColor_carColorType_IDX ON carColor (carColorTypeKey);

-- Car
CREATE INDEX car_carMark_IDX ON Car (carMarkKey);
CREATE INDEX car_carColor_IDX ON Car (carColorKey);
CREATE INDEX car_carType_IDX ON Car (carTypeKey);
CREATE INDEX car_user_IDX ON Car (userKey);

-- User
CREATE INDEX user_firstnameSurname_IDX ON "USER" (firstname, surname);

-- UserStatusHistory
CREATE INDEX userStatusHistory_changeDateTime_IDX ON UserStatusHistory (changeDateTime);
CREATE INDEX userStatusHistory_user_IDX ON UserStatusHistory (userKey);
CREATE INDEX userStatusHistory_userStatus_IDX ON UserStatusHistory (userStatusKey);

-- PostStatusHistory
CREATE INDEX postStatusHistory_changeDateTime_IDX ON PostStatusHistory (changeDateTime);
CREATE INDEX postStatusHistory_post_IDX ON PostStatusHistory (postKey);
CREATE INDEX postStatusHistory_postStatus_IDX ON PostStatusHistory (postStatusKey);

-- Post
CREATE INDEX post_departureDateTime_IDX ON Post (departureDateTime);
CREATE INDEX post_arrivalDateTime_IDX ON Post (arrivalDateTime);
CREATE INDEX post_departureAddress_IDX ON Post (departureAddressKey);
CREATE INDEX post_arrivalAddress_IDX ON Post (arrivalAddressKey);
CREATE INDEX post_seatsCount_IDX ON Post (seatsCount);
CREATE INDEX post_seatPrice_IDX ON Post (seatPrice);

-- Address
CREATE INDEX address_city_IDX ON Address (cityKey);
CREATE INDEX address_postCode_IDX ON Address (postCode);
CREATE INDEX address_street_IDX ON Address (street);

-- City
CREATE INDEX city_country_IDX ON City (countryKey);

-- PaymentStatusHistory
CREATE INDEX paymentStatusHistory_changeDateTime_IDX ON PaymentStatusHistory (changeDateTime);
CREATE INDEX paymentStatusHistory_payment_IDX ON PaymentStatusHistory (paymentKey);
CREATE INDEX paymentStatusHistory_paymentStatus_IDX ON PaymentStatusHistory (paymentStatusKey);

-- Payment
CREATE INDEX payment_reservation_IDX ON Payment (reservationKey);
CREATE INDEX payment_paymentMethod_IDX ON Payment (paymentMethodKey);

-- ReservationStatusHistory
CREATE INDEX reservationStatusHistory_changeDateTime_IDX ON ReservationStatusHistory (changeDateTime);
CREATE INDEX reservationStatusHistory_reservation_IDX ON ReservationStatusHistory (reservationKey);
CREATE INDEX reservationStatusHistory_reservationStatus_IDX ON ReservationStatusHistory (reservationStatusKey);

-- Reservation
CREATE INDEX reservation_user_IDX ON Reservation (userKey);
CREATE INDEX reservation_post_IDX ON Reservation (postKey);
CREATE INDEX reservation_reservationDateTime_IDX ON Reservation (reservationDateTime);

-- UserRole
CREATE INDEX userRole_user_IDX ON UserRole (userKey);
CREATE INDEX userRole_role_IDX ON UserRole (roleKey);
