-- Post
CREATE INDEX post_postStatusKey_IDX ON Post(postStatusKey);

-- User
CREATE INDEX user_firstnameSurname_IDX ON "USER"(firstname, surname);

-- Car
CREATE INDEX car_markKey_IDX ON Car(carMarkKey);
CREATE INDEX car_colorKey_IDX ON Car(carColorKey);
