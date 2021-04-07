-- CarColor
ALTER TABLE CarColor ADD (
    CONSTRAINT carColor_PK PRIMARY KEY (carColorKey),
    CONSTRAINT carColor_name_UN UNIQUE (carColorName)
);
ALTER TABLE CarColor CHANGE carColorKey carColorKey INT NOT NULL AUTO_INCREMENT;

-- CarMark
ALTER TABLE CarMark ADD (
    CONSTRAINT carMark_PK PRIMARY KEY (carMarkKey),
    CONSTRAINT carMark_name_UN UNIQUE (carMarkName)
);
ALTER TABLE CarMark CHANGE carMarkKey carMarkKey INT NOT NULL AUTO_INCREMENT;

-- CarType
ALTER TABLE CarType ADD (
    CONSTRAINT carType_PK PRIMARY KEY (carTypeKey),
    CONSTRAINT carType_name_UN UNIQUE (carTypeName)
);
ALTER TABLE CarType CHANGE carTypeKey carTypeKey INT NOT NULL AUTO_INCREMENT;

-- Car
ALTER TABLE Car ADD (
    CONSTRAINT car_PK PRIMARY KEY (carKey),
    CONSTRAINT car_regNumber_UN UNIQUE (regNumber)
);
ALTER TABLE Car CHANGE carKey carKey INT NOT NULL AUTO_INCREMENT;

-- User
ALTER TABLE `User` ADD (
    CONSTRAINT user_PK PRIMARY KEY (userKey),
    CONSTRAINT user_username_UN UNIQUE (username),
    CONSTRAINT user_email_UN UNIQUE (email),
    CONSTRAINT user_phoneNumber_UN UNIQUE (phoneNumber)
);
ALTER TABLE `User` CHANGE userKey userKey INT NOT NULL AUTO_INCREMENT;

-- UserStatus
ALTER TABLE UserStatus ADD (
    CONSTRAINT userStatus_PK PRIMARY KEY (userStatusKey),
    CONSTRAINT userStatus_name_UN UNIQUE (userStatusName)
);
ALTER TABLE UserStatus CHANGE userStatusKey userStatusKey INT NOT NULL AUTO_INCREMENT;

-- UserStatusChange
ALTER TABLE UserStatusChange ADD (
    CONSTRAINT userStatusChange_PK PRIMARY KEY (userStatusChangeKey)
);
ALTER TABLE UserStatusChange CHANGE userStatusChangeKey userStatusChangeKey INT NOT NULL AUTO_INCREMENT;

-- PostStatus
ALTER TABLE PostStatus ADD (
    CONSTRAINT postStatus_PK PRIMARY KEY (postStatusKey),
    CONSTRAINT postStatus_name_UN UNIQUE (postStatusName)
);
ALTER TABLE PostStatus CHANGE postStatusKey postStatusKey INT NOT NULL AUTO_INCREMENT;

-- PostStatusChange
ALTER TABLE PostStatusChange ADD (
    CONSTRAINT postStatusChange_PK PRIMARY KEY (postStatusChangeKey)
);
ALTER TABLE PostStatusChange CHANGE postStatusChangeKey postStatusChangeKey INT NOT NULL AUTO_INCREMENT;

-- Post
ALTER TABLE Post ADD (
    CONSTRAINT post_PK PRIMARY KEY (postKey)
);
ALTER TABLE Post CHANGE postKey postKey INT NOT NULL AUTO_INCREMENT;

-- Address
ALTER TABLE Address ADD (
    CONSTRAINT address_PK PRIMARY KEY (addressKey)
);
ALTER TABLE Address CHANGE addressKey addressKey INT NOT NULL AUTO_INCREMENT;

-- Country
ALTER TABLE Country ADD (
    CONSTRAINT country_PK PRIMARY KEY (countryKey),
    CONSTRAINT country_name_UN UNIQUE (countryName)
);
ALTER TABLE Country CHANGE countryKey countryKey INT NOT NULL AUTO_INCREMENT;

-- City
ALTER TABLE City ADD (
    CONSTRAINT city_PK PRIMARY KEY (cityKey),
    CONSTRAINT city_name_UN UNIQUE (cityName)
);
ALTER TABLE City CHANGE cityKey cityKey INT NOT NULL AUTO_INCREMENT;

-- PaymentMethod
ALTER TABLE PaymentMethod ADD (
    CONSTRAINT paymentMethod_PK PRIMARY KEY (paymentMethodKey),
    CONSTRAINT paymentMethod_name_UN UNIQUE (paymentMethodName)
);
ALTER TABLE PaymentMethod CHANGE paymentMethodKey paymentMethodKey INT NOT NULL AUTO_INCREMENT;

-- PaymentStatus
ALTER TABLE PaymentStatus ADD (
    CONSTRAINT paymentStatus_PK PRIMARY KEY (paymentStatusKey),
    CONSTRAINT paymentStatus_name_UN UNIQUE (paymentStatusName)
);
ALTER TABLE PaymentStatus CHANGE paymentStatusKey paymentStatusKey INT NOT NULL AUTO_INCREMENT;

-- PaymentStatusChange
ALTER TABLE PaymentStatusChange ADD (
    CONSTRAINT paymentStatusChange_PK PRIMARY KEY (paymentStatusChangeKey)
);
ALTER TABLE PaymentStatusChange CHANGE paymentStatusChangeKey paymentStatusChangeKey INT NOT NULL AUTO_INCREMENT;

-- Payment
ALTER TABLE Payment ADD (
    CONSTRAINT payment_PK PRIMARY KEY (paymentKey)
);
ALTER TABLE Payment CHANGE paymentKey paymentKey INT NOT NULL AUTO_INCREMENT;

-- ReservationStatus
ALTER TABLE ReservationStatus ADD (
    CONSTRAINT reservationStatus_PK PRIMARY KEY (reservationStatusKey),
    CONSTRAINT reservationStatus_name_UN UNIQUE (reservationStatusName)
);
ALTER TABLE ReservationStatus CHANGE reservationStatusKey reservationStatusKey INT NOT NULL AUTO_INCREMENT;

-- ReservationStatusChange
ALTER TABLE ReservationStatusChange ADD (
    CONSTRAINT reservationStatusChange_PK PRIMARY KEY (reservationStatusChangeKey)
);
ALTER TABLE ReservationStatusChange CHANGE reservationStatusChangeKey reservationStatusChangeKey INT NOT NULL AUTO_INCREMENT;

-- Reservation
ALTER TABLE Reservation ADD (
    CONSTRAINT reservation_PK PRIMARY KEY (reservationKey)
);
ALTER TABLE Reservation CHANGE reservationKey reservationKey INT NOT NULL AUTO_INCREMENT;

-- Role
ALTER TABLE `Role` ADD (
    CONSTRAINT role_PK PRIMARY KEY (roleKey),
    CONSTRAINT role_name_UQ UNIQUE (roleName)
);
ALTER TABLE `Role` CHANGE roleKey roleKey INT NOT NULL AUTO_INCREMENT;

-- UserRole
ALTER TABLE UserRole ADD (
    CONSTRAINT userRole_PK PRIMARY KEY (userRoleKey)
);
ALTER TABLE UserRole CHANGE userRoleKey userRoleKey INT NOT NULL AUTO_INCREMENT;
