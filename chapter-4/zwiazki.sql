-- Car
ALTER TABLE Car ADD (
    CONSTRAINT car_user_FK FOREIGN KEY (UserKey) REFERENCES `User`(UserKey),
    CONSTRAINT car_carColor_FK FOREIGN KEY (carColorKey) REFERENCES CarColor(carColorKey),
    CONSTRAINT car_carMark_FK FOREIGN KEY (carMarkKey) REFERENCES CarMark(carMarkKey),
    CONSTRAINT car_carType_FK FOREIGN KEY (carTypeKey) REFERENCES CarType(carTypeKey)
);

-- Post
ALTER TABLE Post ADD (
    CONSTRAINT post_car_FK FOREIGN KEY (carKey) REFERENCES Car(carKey),
    CONSTRAINT post_arrivalAddress_FK FOREIGN KEY (arrivalAddressKey)
    REFERENCES Address(addressKey) ON DELETE CASCADE,
    CONSTRAINT post_departureAddress_FK FOREIGN KEY (departureAddressKey)
    REFERENCES Address(addressKey) ON DELETE CASCADE
);

-- PostStatusHistory
ALTER TABLE PostStatusHistory ADD (
    CONSTRAINT postStatusHistory_post_FK FOREIGN KEY (postKey) REFERENCES Post(postKey) ON DELETE CASCADE,
    CONSTRAINT postStatusHistory_postStatus_FK FOREIGN KEY (postStatusKey) REFERENCES PostStatus(postStatusKey)
);

-- Address
ALTER TABLE Address ADD (
    CONSTRAINT address_city_FK FOREIGN KEY (cityKey) REFERENCES City(cityKey)
);

-- City
ALTER TABLE City ADD (
    CONSTRAINT city_country_FK FOREIGN KEY (countryKey) REFERENCES Country(countryKey)
);

-- Payment
ALTER TABLE Payment ADD (
    CONSTRAINT payment_paymentMethod_FK FOREIGN KEY (paymentMethodKey) REFERENCES PaymentMethod(paymentMethodKey),
    CONSTRAINT payment_reservation_FK FOREIGN KEY (reservationKey) REFERENCES Reservation(reservationKey)
);

-- PaymentStatusHistory
ALTER TABLE PaymentStatusHistory ADD (
    CONSTRAINT paymentStatusHistory_payment_FK FOREIGN KEY (paymentKey) REFERENCES Payment(paymentKey) ON DELETE CASCADE,
    CONSTRAINT paymentStatusHistory_paymentStatus_FK FOREIGN KEY (paymentStatusKey) REFERENCES PaymentStatus(paymentStatusKey)
);

-- Reservation
ALTER TABLE Reservation ADD (
    CONSTRAINT reservation_post_FK FOREIGN KEY (postKey) REFERENCES Post(postKey),
    CONSTRAINT reservation_user_FK FOREIGN KEY (UserKey) REFERENCES `User`(UserKey)
);

-- ReservationStatusHistory
ALTER TABLE ReservationStatusHistory ADD (
    CONSTRAINT reservationStatusHistory_reservation_FK FOREIGN KEY (reservationKey) REFERENCES Reservation(reservationKey) ON DELETE CASCADE,
    CONSTRAINT reservationStatusHistory_reservationStatus_FK FOREIGN KEY (reservationStatusKey) REFERENCES ReservationStatus(reservationStatusKey)
);

-- User
ALTER TABLE `User` ADD (
    CONSTRAINT user_address_FK FOREIGN KEY (addressKey) REFERENCES Address(addressKey) ON DELETE CASCADE
);

-- UserStatusHistory
ALTER TABLE UserStatusHistory ADD (
    CONSTRAINT userStatusHistory_user_FK FOREIGN KEY (userKey) REFERENCES `User`(userKey) ON DELETE CASCADE,
    CONSTRAINT userStatusHistory_userStatus_FK FOREIGN KEY (userStatusKey) REFERENCES UserStatus(userStatusKey)
);

-- UserRole
ALTER TABLE UserRole ADD (
    CONSTRAINT userRole_user_FK FOREIGN KEY (userKey) REFERENCES `User`(userKey),
    CONSTRAINT userRole_role_FK FOREIGN KEY (roleKey) REFERENCES `Role`(roleKey)
);
