-- Car
ALTER TABLE Car
    ADD CONSTRAINT car_user_FK FOREIGN KEY (UserKey) REFERENCES "user"(UserKey),
    ADD CONSTRAINT car_carColor_FK FOREIGN KEY (carColorKey) REFERENCES CarColor(carColorKey),
    ADD CONSTRAINT car_carMark_FK FOREIGN KEY (carMarkKey) REFERENCES CarMark(carMarkKey),
    ADD CONSTRAINT car_carType_FK FOREIGN KEY (carTypeKey) REFERENCES CarType(carTypeKey)
;

-- Post
ALTER TABLE Post
    ADD CONSTRAINT post_car_FK FOREIGN KEY (carKey) REFERENCES Car(carKey),
    ADD CONSTRAINT post_arrivalAddress_FK FOREIGN KEY (arrivalAddressKey) REFERENCES Address(addressKey),
    ADD CONSTRAINT post_departureAddress_FK FOREIGN KEY (departureAddressKey) REFERENCES Address(addressKey)
;

-- PostStatusChange
ALTER TABLE PostStatusChange
    ADD CONSTRAINT postStatusChange_post_FK FOREIGN KEY (postKey) REFERENCES Post(postKey) ON DELETE CASCADE,
    ADD CONSTRAINT postStatusChange_postStatus_FK FOREIGN KEY (postStatusKey) REFERENCES PostStatus(postStatusKey)
;

-- Address
ALTER TABLE Address
    ADD CONSTRAINT address_city_FK FOREIGN KEY (cityKey) REFERENCES City(cityKey)
;

-- City
ALTER TABLE City
    ADD CONSTRAINT city_country_FK FOREIGN KEY (countryKey) REFERENCES Country(countryKey) ON DELETE CASCADE
;

-- Payment
ALTER TABLE Payment
    ADD CONSTRAINT payment_paymentMethod_FK FOREIGN KEY (paymentMethodKey) REFERENCES PaymentMethod(paymentMethodKey),
    ADD CONSTRAINT payment_reservation_FK FOREIGN KEY (reservationKey) REFERENCES Reservation(reservationKey)
;

-- PaymentStatusChange
ALTER TABLE PaymentStatusChange
    ADD CONSTRAINT paymentStatusChange_payment_FK FOREIGN KEY (paymentKey) REFERENCES Payment(paymentKey) ON DELETE CASCADE,
    ADD CONSTRAINT paymentStatusChange_paymentStatus_FK FOREIGN KEY (paymentStatusKey) REFERENCES PaymentStatus(paymentStatusKey)
;

-- Reservation
ALTER TABLE Reservation
    ADD CONSTRAINT reservation_post_FK FOREIGN KEY (postKey) REFERENCES Post(postKey),
    ADD CONSTRAINT reservation_user_FK FOREIGN KEY (UserKey) REFERENCES "user"(UserKey)
;

-- ReservationStatusChange
ALTER TABLE ReservationStatusChange
    ADD CONSTRAINT reservationStatusChange_reservation_FK FOREIGN KEY (reservationKey) REFERENCES Reservation(reservationKey) ON DELETE CASCADE,
    ADD CONSTRAINT reservationStatusChange_reservationStatus_FK FOREIGN KEY (reservationStatusKey) REFERENCES ReservationStatus(reservationStatusKey)
;

-- User
ALTER TABLE "user"
    ADD CONSTRAINT user_address_FK FOREIGN KEY (addressKey) REFERENCES Address(addressKey)
;

-- UserStatusChange
ALTER TABLE UserStatusChange
    ADD CONSTRAINT userStatusChange_user_FK FOREIGN KEY (userKey) REFERENCES "user"(userKey) ON DELETE CASCADE,
    ADD CONSTRAINT userStatusChange_userStatus_FK FOREIGN KEY (userStatusKey) REFERENCES UserStatus(userStatusKey)
;

-- UserRole
ALTER TABLE UserRole
    ADD CONSTRAINT userRole_user_FK FOREIGN KEY (userKey) REFERENCES "user"(userKey),
    ADD CONSTRAINT userRole_role_FK FOREIGN KEY (roleKey) REFERENCES Role(roleKey)
;
