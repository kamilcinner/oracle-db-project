-- Post
CREATE INDEX postPostStatusKeyIDX ON Post(postStatusKey);

-- User
CREATE INDEX blaBlaUserFirstnameSurnameIDX ON BlaBlaUser(firstname, surname);

-- Car
CREATE INDEX carMarkKeyIDX ON Car(carMarkKey);
CREATE INDEX carColorKeyIDX ON Car(carColorKey);
