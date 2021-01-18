-- CarColor
ALTER TABLE CarColor ADD (
    CONSTRAINT carColorPK PRIMARY KEY (carColorKey),
    CONSTRAINT carColorNameUN UNIQUE (carColorName)
);

-- CarMark
ALTER TABLE CarMark ADD (
    CONSTRAINT carMarkPK PRIMARY KEY (carMarkKey),
    CONSTRAINT carMarkNameUN UNIQUE (carMarkName)
);

-- Car
ALTER TABLE Car ADD (
    CONSTRAINT carPK PRIMARY KEY (carKey),
    CONSTRAINT carRegNumberUN UNIQUE (carRegNumber)
);

-- BlaBlaUser
ALTER TABLE BlaBlaUser ADD (
    CONSTRAINT blaBlaUserPK PRIMARY KEY (blaBlaUserKey),
    CONSTRAINT blaBlaUserUsernameUN UNIQUE (username),
    CONSTRAINT blaBlaUserEmailUN UNIQUE (email),
);

-- PostStatus
ALTER TABLE PostStatus ADD (
    CONSTRAINT postStatusPK PRIMARY KEY (postStatusKey),
    CONSTRAINT postStatusNameUN UNIQUE (postStatusName)
);

-- Post
ALTER TABLE Post ADD (
    CONSTRAINT postPK PRIMARY KEY (postKey)
);

-- Address
ALTER TABLE Address ADD (
    CONSTRAINT addressPK PRIMARY KEY (addressKey)
);

-- Country
ALTER TABLE Country ADD (
    CONSTRAINT countryPK PRIMARY KEY (countryKey),
    CONSTRAINT countryNameUN UNIQUE (countryName)
);

-- City
ALTER TABLE City ADD (
    CONSTRAINT cityPK PRIMARY KEY (cityKey),
    CONSTRAINT cityNameUN UNIQUE (cityName)
);

-- PaymentMethod
ALTER TABLE PaymentMethod ADD (
    CONSTRAINT paymentMethodPK PRIMARY KEY (paymentMethodKey),
    CONSTRAINT paymentMethodNameUN UNIQUE (paymentMethodName)
);

-- PaymentStatus
ALTER TABLE PaymentStatus ADD (
    CONSTRAINT paymentStatusPK PRIMARY KEY (paymentStatusKey),
    CONSTRAINT paymentStatusNameUN UNIQUE (paymentStatusName)
);

-- Payment
ALTER TABLE Payment ADD (
    CONSTRAINT paymentPK PRIMARY KEY (paymentKey)
);

-- Travel
ALTER TABLE Travel ADD (
    CONSTRAINT travelPK PRIMARY KEY (travelKey, blaBlaUserKey)
);
