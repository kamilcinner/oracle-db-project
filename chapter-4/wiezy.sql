-- CarColor
ALTER TABLE CarColor ADD (
    CONSTRAINT carColor_PK PRIMARY KEY (carColorKey),
    CONSTRAINT carColor_name_UN UNIQUE (carColorName)
);

-- CarColorType
ALTER TABLE CarColorType ADD (
    CONSTRAINT carColorType_PK PRIMARY KEY (carColorTypeKey),
    CONSTRAINT carColorType_name_UN UNIQUE (carColorTypeName)
);

-- CarMark
ALTER TABLE CarMark ADD (
    CONSTRAINT carMark_PK PRIMARY KEY (carMarkKey),
    CONSTRAINT carMark_name_UN UNIQUE (carMarkName)
);

-- CarType
ALTER TABLE CarType ADD (
    CONSTRAINT carType_PK PRIMARY KEY (carTypeKey),
);

-- Car
ALTER TABLE Car ADD (
    CONSTRAINT car_PK PRIMARY KEY (carKey),
    CONSTRAINT car_regNumber_UN UNIQUE (regNumber)
);

-- User
ALTER TABLE "USER" ADD (
    CONSTRAINT user_PK PRIMARY KEY (userKey),
    CONSTRAINT user_username_UN UNIQUE (username),
    CONSTRAINT user_email_UN UNIQUE (email)
);

-- UserStatus
ALTER TABLE UserStatus ADD (
    CONSTRAINT userStatus_PK PRIMARY KEY (userStatusKey),
    CONSTRAINT userStatus_name_UN UNIQUE (userStatusName)
);

-- UserStatusHistory
ALTER TABLE UserStatusHistory ADD (
    CONSTRAINT userStatusHistory_PK PRIMARY KEY (userStatusHistoryKey)
);

-- PostStatus
ALTER TABLE PostStatus ADD (
    CONSTRAINT postStatus_PK PRIMARY KEY (postStatusKey),
    CONSTRAINT postStatus_name_UN UNIQUE (postStatusName)
);

-- PostStatusHistory
ALTER TABLE PostStatusHistory ADD (
    CONSTRAINT postStatusHistory_PK PRIMARY KEY (postStatusHistoryKey)
);

-- Post
ALTER TABLE Post ADD (
    CONSTRAINT post_PK PRIMARY KEY (postKey)
);

-- Address
ALTER TABLE Address ADD (
    CONSTRAINT address_PK PRIMARY KEY (addressKey)
);

-- Country
ALTER TABLE Country ADD (
    CONSTRAINT country_PK PRIMARY KEY (countryKey),
    CONSTRAINT country_name_UN UNIQUE (countryName)
);

-- City
ALTER TABLE City ADD (
    CONSTRAINT city_PK PRIMARY KEY (cityKey),
    CONSTRAINT city_name_UN UNIQUE (cityName)
);

-- PaymentMethod
ALTER TABLE PaymentMethod ADD (
    CONSTRAINT paymentMethod_PK PRIMARY KEY (paymentMethodKey),
    CONSTRAINT paymentMethod_name_UN UNIQUE (paymentMethodName)
);

-- PaymentStatus
ALTER TABLE PaymentStatus ADD (
    CONSTRAINT paymentStatus_PK PRIMARY KEY (paymentStatusKey),
    CONSTRAINT paymentStatus_name_UN UNIQUE (paymentStatusName)
);

-- Payment
ALTER TABLE Payment ADD (
    CONSTRAINT payment_PK PRIMARY KEY (paymentKey)
);

-- ReservationStatus
ALTER TABLE ReservationStatus ADD (
    CONSTRAINT reservationStatus_PK PRIMARY KEY (reservationStatusKey),
    CONSTRAINT reservationStatus_name_UN UNIQUE (reservationStatusName)
);

-- ReservationStatusHistory
ALTER TABLE ReservationStatusHistory ADD (
    CONSTRAINT reservationStatusHistory_PK PRIMARY KEY (reservationStatusHistoryKey)
);

-- Reservation
ALTER TABLE Reservation ADD (
    CONSTRAINT reservation_PK PRIMARY KEY (reservationKey)
);
