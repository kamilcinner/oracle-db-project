-- CarColor


-- CarColorType


-- CarMark


-- CarType


-- Car
CREATE INDEX car_carMark_IDX ON Car (carMarkKey);
CREATE INDEX car_carColor_IDX ON Car (carColorKey);

-- User
CREATE INDEX user_firstnameSurname_IDX ON "USER" (firstname, surname);

-- UserStatus


-- UserStatusHistory
CREATE INDEX userStatusHistory_user_IDX ON UserStatusHistory (userKey);

-- PostStatus


-- PostStatusHistory


-- Post
CREATE INDEX post_postStatus_IDX ON Post (postStatusKey);

-- Address


-- City


-- Country


-- PaymentMethod


-- PaymentStatus


-- Payment


-- ReservationStatus


-- ReservationStatusHistory


-- Reservation

