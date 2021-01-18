-- Color
ALTER TABLE CarColor ADD (
    CONSTRAINT carColorTypeFK FOREIGN KEY (carColorTypeKey) REFERENCES CarColorType
);

-- Car
ALTER TABLE Car ADD (
    CONSTRAINT carBlaBlaUserFK FOREIGN KEY (blaBlaUserKey) REFERENCES BlaBlaUser,
    CONSTRAINT carCarColorFK FOREIGN KEY (carColorKey) REFERENCES CarColor,
    CONSTRAINT carCarMarkFK FOREIGN KEY (carMarkKey) REFERENCES CarMark
);

-- Post
ALTER TABLE Post ADD (
    CONSTRAINT postCarFK FOREIGN KEY (carKey) REFERENCES Car,
    CONSTRAINT postArrivalAddressFK FOREIGN KEY (arrivalAddressKey)
    REFERENCES Address ON DELETE CASCADE,
    CONSTRAINT postDepartureAddressFK FOREIGN KEY (departureAddressKey)
    REFERENCES Address ON DELETE CASCADE,
    CONSTRAINT postPostStatusFK FOREIGN KEY (postStatusKey) REFERENCES PostStatus
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
    CONSTRAINT paymentPaymentStatusFK FOREIGN KEY (paymentStatusKey) REFERENCES PaymentStatus
);

-- Travel
ALTER TABLE Travel ADD (
    CONSTRAINT travelPostFK FOREIGN KEY (postKey) REFERENCES Post,
    CONSTRAINT travelBlaBlaUserFK FOREIGN KEY (blaBlaUserKey) REFERENCES BlaBlaUser,
    CONSTRAINT travelPaymentFK FOREIGN KEY (paymentKey) REFERENCES Payment
);

-- BlaBlaUser
ALTER TABLE BlaBlaUser ADD (
    CONSTRAINT blaBlaUserAddressFK FOREIGN KEY (addressKey)
    REFERENCES Address ON DELETE CASCADE
);
