# Wybiera średnią cenę za miejsce obliczoną na podstawie każdego ogłoszenia
DROP VIEW avSeatPriceView;
CREATE VIEW avSeatPriceView AS SELECT round(avg(seatPrice),2) AS 'Średnia cena za miejsce' FROM Post;
SELECT * FROM avSeatPriceView;

# Wybiera ogłoszenia ze statusem "Active" - aktywny
DROP VIEW activePostView;
CREATE VIEW activePostView AS SELECT
p.postKey, p.departureDateTime, p.arrivalDateTime, p.seatsCount, p.seatPrice, p.departureAddressKey,
p.arrivalAddressKey, p.carKey
FROM Post p
JOIN PostStatusChange psc ON p.postKey=psc.postKey
JOIN PostStatus ps ON ps.postStatusKey=psc.postStatusKey
WHERE psc.changeDateTime=
(SELECT max(pscc.changeDateTime) FROM PostStatusChange pscc
WHERE pscc.postKey=p.postKey
) AND ps.postStatusName='Active';
SELECT * FROM activePostView;

# Wybiera identyfikator ogłoszenia i liczbę wolnych miejsc dla niego
DROP VIEW postAvailableSeatsCount;
CREATE VIEW postAvailableSeatsCount AS SELECT p.postKey, p.seatsCount - (
    COALESCE (
        (
            SELECT sum(r.seatsCount) FROM Reservation r
            JOIN ReservationStatusChange rsc ON r.reservationKey=rsc.reservationKey
            JOIN ReservationStatus rs ON rsc.reservationStatusKey=rs.reservationStatusKey
            WHERE rsc.changeDateTime = (
                SELECT max(rscc.changeDateTime)
                FROM ReservationStatusChange rscc
                WHERE rscc.reservationKey = r.reservationKey
            )
            AND rs.reservationStatusName NOT IN ('Canceled','Rejected')
            AND r.postKey = p.postKey
            GROUP BY r.postKey
        ), 0
    )
) AS `seatsCount`
FROM Post p;
SELECT * FROM postAvailableSeatsCount;

# Jeżeli użytkownik chce zarezerwować liczbę miejsc większą niż licza wolnych w ogłoszeniu,
# to rezerowana jest liczba pozostałych wolnych miejsc
CREATE TRIGGER validateSeatsCount BEFORE INSERT ON Reservation
FOR EACH ROW
	BEGIN
       IF NEW.seatsCount > (
           SELECT pasc.seatsCount FROM postAvailableSeatsCount pasc WHERE NEW.postKey = pasc.postKey
       ) THEN
           SET NEW.seatsCount = (
               SELECT pasc.seatsCount FROM postAvailableSeatsCount pasc WHERE NEW.postKey = pasc.postKey
           );
       END IF;
   END;
;

-- Reservation (Post, User)
INSERT INTO Reservation (reservationDateTime, seatsCount, postKey, userKey) VALUES
    ('2021-01-05 03:02:01', 3, 2, 1)
;

select * from ReservationStatus;

INSERT INTO ReservationStatusChange (changeDateTime, reservationKey, reservationStatusKey) VALUES
    ('2021-01-05 03:02:01', 6, 2)
;

