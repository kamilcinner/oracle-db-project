-- CarColor


-- CarColorType


-- CarMark


-- CarType


-- Car
CREATE INDEX car_markKey_IDX ON Car(carMarkKey);
CREATE INDEX car_colorKey_IDX ON Car(carColorKey);

-- User
CREATE INDEX user_firstnameSurname_IDX ON "USER"(firstname, surname);

-- UserStatus


-- UserStatusHistory


-- PostStatus


-- PostStatusHistory


-- Post
CREATE INDEX post_postStatusKey_IDX ON Post(postStatusKey);

-- Address


-- City


-- Country


-- PaymentMethod


-- PaymentStatus


-- Payment


-- ReservationStatus


-- ReservationStatusHistory


-- Reservation

