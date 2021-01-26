-- Color
ALTER TABLE CarColor ADD (
    CONSTRAINT carColor_carColorType_FK FOREIGN KEY (carColorTypeKey) REFERENCES CarColorType
);

-- Car
ALTER TABLE Car ADD (
    CONSTRAINT car_user_FK FOREIGN KEY (UserKey) REFERENCES "USER",
    CONSTRAINT car_carColor_FK FOREIGN KEY (carColorKey) REFERENCES CarColor,
    CONSTRAINT car_carMark_FK FOREIGN KEY (carMarkKey) REFERENCES CarMark,
    CONSTRAINT car_carType_FK FOREIGN KEY (carTypeKey) REFERENCES CarType
);

-- Post
ALTER TABLE Post ADD (
    CONSTRAINT post_car_FK FOREIGN KEY (carKey) REFERENCES Car,
    CONSTRAINT post_arrivalAddress_FK FOREIGN KEY (arrivalAddressKey)
    REFERENCES Address ON DELETE CASCADE,
    CONSTRAINT post_departureAddress_FK FOREIGN KEY (departureAddressKey)
    REFERENCES Address ON DELETE CASCADE
);

-- PostStatusHistory
ALTER TABLE PostStatusHistory ADD (
    CONSTRAINT postStatusHistory_post_FK FOREIGN KEY (postKey) REFERENCES Post ON DELETE CASCADE,
    CONSTRAINT postStatusHistory_postStatus_FK FOREIGN KEY (postStatusKey) REFERENCES PostStatus
);

-- Address
ALTER TABLE Address ADD (
    CONSTRAINT address_city_FK FOREIGN KEY (cityKey) REFERENCES City
);

-- City
ALTER TABLE City ADD (
    CONSTRAINT city_country_FK FOREIGN KEY (countryKey) REFERENCES Country
);

-- Payment
ALTER TABLE Payment ADD (
    CONSTRAINT payment_paymentMethod_FK FOREIGN KEY (paymentMethodKey) REFERENCES PaymentMethod,
    CONSTRAINT payment_reservation_FK FOREIGN KEY (reservationKey) REFERENCES Reservation
);

-- PaymentStatusHistory
ALTER TABLE PaymentStatusHistory ADD (
    CONSTRAINT paymentStatusHistory_payment_FK FOREIGN KEY (paymentKey) REFERENCES Payment ON DELETE CASCADE,
    CONSTRAINT paymentStatusHistory_paymentStatus_FK FOREIGN KEY (paymentStatusKey) REFERENCES PaymentStatus
);

-- Reservation
ALTER TABLE Reservation ADD (
    CONSTRAINT reservation_post_FK FOREIGN KEY (postKey) REFERENCES Post,
    CONSTRAINT reservation_user_FK FOREIGN KEY (UserKey) REFERENCES "USER"
);

-- ReservationStatusHistory
ALTER TABLE ReservationStatusHistory ADD (
    CONSTRAINT reservationStatusHistory_reservation_FK FOREIGN KEY (reservationKey) REFERENCES Reservation ON DELETE CASCADE,
    CONSTRAINT reservationStatusHistory_reservationStatus_FK FOREIGN KEY (reservationStatusKey) REFERENCES ReservationStatus
);

-- User
ALTER TABLE "USER" ADD (
    CONSTRAINT user_address_FK FOREIGN KEY (addressKey) REFERENCES Address ON DELETE CASCADE
);

-- UserStatusHistory
ALTER TABLE UserStatusHistory ADD (
    CONSTRAINT userStatusHistory_user_FK FOREIGN KEY (userKey) REFERENCES "USER" ON DELETE CASCADE,
    CONSTRAINT userStatusHistory_userStatus_FK FOREIGN KEY (userStatusKey) REFERENCES userStatus
);

-- UserRole
ALTER TABLE UserRole ADD (
    CONSTRAINT userRole_user_FK FOREIGN KEY (userKey) REFERENCES "USER",
    CONSTRAINT userRole_role_FK FOREIGN KEY (roleKey) REFERENCES "ROLE"
);
