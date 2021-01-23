-- Color
ALTER TABLE CarColor ADD (
    CONSTRAINT carColorTypeFK FOREIGN KEY (carColorTypeKey) REFERENCES CarColorType
);

-- Car
ALTER TABLE Car ADD (
    CONSTRAINT carUserFK FOREIGN KEY (UserKey) REFERENCES "USER",
    CONSTRAINT carCarColorFK FOREIGN KEY (carColorKey) REFERENCES CarColor,
    CONSTRAINT carCarMarkFK FOREIGN KEY (carMarkKey) REFERENCES CarMark
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
    CONSTRAINT paymentReservationKeyFK FOREIGN KEY (reservationKey) REFERENCES Reservation
);

-- Reservation
ALTER TABLE Reservation ADD (
    CONSTRAINT reservationPostFK FOREIGN KEY (postKey) REFERENCES Post,
    CONSTRAINT reservationUserFK FOREIGN KEY (UserKey) REFERENCES "USER"
);

-- ReservationStatusHistory
ALTER TABLE ReservationStatusHistory ADD (
    CONSTRAINT reservationStatusHistoryReservationFK FOREIGN KEY (reservationKey) REFERENCES Reservation,
    CONSTRAINT reservationStatusHistoryReservationStatusFK FOREIGN KEY (reservationStatusKey) REFERENCES ReservationStatus
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
