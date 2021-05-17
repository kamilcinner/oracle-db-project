-- CarColor
ALTER TABLE CarColor
    ADD CONSTRAINT carColor_PK PRIMARY KEY (carColorKey),
    CONSTRAINT carColor_name_UN UNIQUE (carColorName)
;

-- CarMark
ALTER TABLE CarMark
    ADD CONSTRAINT carMark_PK PRIMARY KEY (carMarkKey),
    CONSTRAINT carMark_name_UN UNIQUE (carMarkName)
;

-- CarType
ALTER TABLE CarType
    ADD CONSTRAINT carType_PK PRIMARY KEY (carTypeKey),
    CONSTRAINT carType_name_UN UNIQUE (carTypeName)
;

-- Car
ALTER TABLE Car
    ADD CONSTRAINT car_PK PRIMARY KEY (carKey),
    CONSTRAINT car_regNumber_UN UNIQUE (regNumber)
;

-- User
ALTER TABLE "User"
    ADD CONSTRAINT user_PK PRIMARY KEY (userKey),
    CONSTRAINT user_username_UN UNIQUE (username),
    CONSTRAINT user_email_UN UNIQUE (email),
    CONSTRAINT user_phoneNumber_UN UNIQUE (phoneNumber)
;

-- UserStatus
ALTER TABLE UserStatus
    ADD CONSTRAINT userStatus_PK PRIMARY KEY (userStatusKey),
    CONSTRAINT userStatus_name_UN UNIQUE (userStatusName)
;

-- UserStatusChange
ALTER TABLE UserStatusChange
    ADD CONSTRAINT userStatusChange_PK PRIMARY KEY (userStatusChangeKey)
;

-- PostStatus
ALTER TABLE PostStatus
    ADD CONSTRAINT postStatus_PK PRIMARY KEY (postStatusKey),
    CONSTRAINT postStatus_name_UN UNIQUE (postStatusName)
;

-- PostStatusChange
ALTER TABLE PostStatusChange
    ADD CONSTRAINT postStatusChange_PK PRIMARY KEY (postStatusChangeKey)
;

-- Post
ALTER TABLE Post
    ADD CONSTRAINT post_PK PRIMARY KEY (postKey)
;

-- Address
ALTER TABLE Address
    ADD CONSTRAINT address_PK PRIMARY KEY (addressKey)
;

-- Country
ALTER TABLE Country
    ADD CONSTRAINT country_PK PRIMARY KEY (countryKey),
    CONSTRAINT country_name_UN UNIQUE (countryName)
;

-- City
ALTER TABLE City
    ADD CONSTRAINT city_PK PRIMARY KEY (cityKey),
    CONSTRAINT city_name_UN UNIQUE (cityName)
;

-- PaymentMethod
ALTER TABLE PaymentMethod
    ADD CONSTRAINT paymentMethod_PK PRIMARY KEY (paymentMethodKey),
    CONSTRAINT paymentMethod_name_UN UNIQUE (paymentMethodName)
;

-- PaymentStatus
ALTER TABLE PaymentStatus
    ADD CONSTRAINT paymentStatus_PK PRIMARY KEY (paymentStatusKey),
    CONSTRAINT paymentStatus_name_UN UNIQUE (paymentStatusName)
;

-- PaymentStatusChange
ALTER TABLE PaymentStatusChange
    ADD CONSTRAINT paymentStatusChange_PK PRIMARY KEY (paymentStatusChangeKey)
;

-- Payment
ALTER TABLE Payment
    ADD CONSTRAINT payment_PK PRIMARY KEY (paymentKey)
;

-- ReservationStatus
ALTER TABLE ReservationStatus
    ADD CONSTRAINT reservationStatus_PK PRIMARY KEY (reservationStatusKey),
    CONSTRAINT reservationStatus_name_UN UNIQUE (reservationStatusName)
;

-- ReservationStatusChange
ALTER TABLE ReservationStatusChange
    ADD CONSTRAINT reservationStatusChange_PK PRIMARY KEY (reservationStatusChangeKey)
;

-- Reservation
ALTER TABLE Reservation
    ADD CONSTRAINT reservation_PK PRIMARY KEY (reservationKey)
;

-- Role
ALTER TABLE Role
    ADD CONSTRAINT role_PK PRIMARY KEY (roleKey),
    CONSTRAINT role_name_UQ UNIQUE (roleName)
;

-- UserRole
ALTER TABLE UserRole
     ADD CONSTRAINT userRole_PK PRIMARY KEY (userRoleKey)
;
