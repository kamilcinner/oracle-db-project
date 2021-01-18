-- Car
ALTER TABLE Car ADD (
    CONSTRAINT carBlaBlaUserFK FOREIGN KEY (blaBlaUserKey) REFERENCES BlaBlaUser,
    CONSTRAINT carCarColorFK FOREIGN KEY (carColorKey) REFERENCES CarColor,
    CONSTRAINT carCarMarkFK FOREIGN KEY (carMarkKey) REFERENCES CarMark
);

-- Post
ALTER TABLE Post ADD (
    CONSTRAINT postCarFK FOREIGN KEY (carKey) REFERENCES Car,
    CONSTRAINT postArrivalAddressFK FOREIGN KEY (arrivalAddressKey) REFERENCES Address,
    CONSTRAINT postDepartureAddressFK FOREIGN KEY (departureAddressKey) REFERENCES Address,
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
    CONSTRAINT paymentTravelFK FOREIGN KEY (travelKey) REFERENCES Travel,
    CONSTRAINT paymentPaymentStatusFK FOREIGN KEY (paymentStatusKey) REFERENCES PaymentStatus
);

-- Travel
ALTER TABLE Travel ADD (
    CONSTRAINT travelPostFK FOREIGN KEY (postKey) REFERENCES Post,
    CONSTRAINT travelBlaBlaUserFK FOREIGN KEY (blaBlaUserKey) REFERENCES BlaBlaUser
);

-- BlaBlaUser
ALTER TABLE BlaBlaUser ADD (
    CONSTRAINT blaBlaUserAddressFK FOREIGN KEY (addressKey) REFERENCES Address
);
