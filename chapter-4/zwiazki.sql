-- Color
ALTER TABLE CarColor ADD (
    CONSTRAINT carColorTypeFK FOREIGN KEY (carColorTypeKey) REFERENCES CarColorType
);

-- Car
ALTER TABLE Car ADD (
    CONSTRAINT carUserFK FOREIGN KEY (UserKey) REFERENCES "USER",
    CONSTRAINT carCarColorFK FOREIGN KEY (carColorKey) REFERENCES CarColor,
    CONSTRAINT carCarMarkFK FOREIGN KEY (carMarkKey) REFERENCES CarMark
    CONSTRAINT carCarTypeFK FOREIGN KEY (carTypeKey) REFERENCES CarType
);

-- Post
ALTER TABLE Post ADD (
    CONSTRAINT postCarFK FOREIGN KEY (carKey) REFERENCES Car,
    CONSTRAINT postArrivalAddressFK FOREIGN KEY (arrivalAddressKey)
    REFERENCES Address ON DELETE CASCADE,
    CONSTRAINT postDepartureAddressFK FOREIGN KEY (departureAddressKey)
    REFERENCES Address ON DELETE CASCADE
);

-- PostStatusHistory
ALTER TABLE PostStatusHistory ADD (
    CONSTRAINT postStatusHistoryPostFK FOREIGN KEY (postKey) REFERENCES Post,
    CONSTRAINT postStatusHistoryPostStatusFK FOREIGN KEY (postStatusKey) REFERENCES PostStatus
);

-- Address
ALTER TABLE Address ADD (
    CONSTRAINT addressCityFK FOREIGN KEY (cityKey) REFERENCES City
);

-- City
ALTER TABLE City ADD (
    CONSTRAINT cityCountryFK FOREIGN KEY (countryKey) REFERENCES Country
);

-- Payment
ALTER TABLE Payment ADD (
    CONSTRAINT paymentPaymentMethodFK FOREIGN KEY (paymentMethodKey) REFERENCES PaymentMethod,
    CONSTRAINT paymentPaymentStatusFK FOREIGN KEY (paymentStatusKey) REFERENCES PaymentStatus,
    CONSTRAINT paymentTravelKeyFK FOREIGN KEY (travelKey) REFERENCES Travel
);

-- Travel
ALTER TABLE Travel ADD (
    CONSTRAINT travelPostFK FOREIGN KEY (postKey) REFERENCES Post,
    CONSTRAINT travelUserFK FOREIGN KEY (UserKey) REFERENCES "USER"
);

-- User
ALTER TABLE "USER" ADD (
    CONSTRAINT userAddressFK FOREIGN KEY (addressKey)
    REFERENCES Address ON DELETE CASCADE
);

-- UserStatusHistory
ALTER TABLE UserStatusHistory ADD (
    CONSTRAINT userStatusHistoryUserFK FOREIGN KEY (userKey) REFERENCES "USER",
    CONSTRAINT userStatusHistoryUserStatusFK FOREIGN KEY (userStatusKey) REFERENCES userStatus
);
