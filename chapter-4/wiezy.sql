-- CarColor
ALTER TABLE CarColor ADD (
    CONSTRAINT carColorPK PRIMARY KEY (carColorKey),
    CONSTRAINT carColorNameUN UNIQUE (carColorName)
);

-- CarColorType
ALTER TABLE CarColorType ADD (
    CONSTRAINT carColorTypePK PRIMARY KEY (carColorTypeKey),
    CONSTRAINT carColorTypeNameUN UNIQUE (carColorTypeName)
);

-- CarMark
ALTER TABLE CarMark ADD (
    CONSTRAINT carMarkPK PRIMARY KEY (carMarkKey),
    CONSTRAINT carMarkNameUN UNIQUE (carMarkName)
);

-- Car
ALTER TABLE Car ADD (
    CONSTRAINT carPK PRIMARY KEY (carKey),
    CONSTRAINT carRegNumberUN UNIQUE (regNumber)
);

-- User
ALTER TABLE "USER" ADD (
    CONSTRAINT userPK PRIMARY KEY (userKey),
    CONSTRAINT userUsernameUN UNIQUE (username),
    CONSTRAINT userEmailUN UNIQUE (email)
);

-- UserStatus
ALTER TABLE UserStatus ADD (
    CONSTRAINT userStatusPK PRIMARY KEY (userStatusKey),
    CONSTRAINT userStatusNameUN UNIQUE (userStatusName)
);

-- UserStatusHistory
ALTER TABLE UserStatusHistory ADD (
    CONSTRAINT userStatusHistoryPK PRIMARY KEY (userStatusHistoryKey)
);

-- PostStatus
ALTER TABLE PostStatus ADD (
    CONSTRAINT postStatusPK PRIMARY KEY (postStatusKey),
    CONSTRAINT postStatusNameUN UNIQUE (postStatusName)
);

-- PostStatusHistory
ALTER TABLE PostStatusHistory ADD (
    CONSTRAINT postStatusHistoryPK PRIMARY KEY (postStatusHistoryKey)
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
    CONSTRAINT travelPK PRIMARY KEY (postKey, userKey)
);
