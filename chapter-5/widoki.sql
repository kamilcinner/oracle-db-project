DROP VIEW avSeatPriceView;
CREATE VIEW avSeatPriceView AS SELECT round(avg(seatPrice),2) AS 'Średnia cena za miejsce' FROM Post;
SELECT * FROM avSeatPriceView;

DROP VIEW activePostView;
CREATE VIEW activePostView AS SELECT * FROM Post p 
JOIN PostStatusChange psc ON p.postKey=psc.postKey 
JOIN PostStatus ps ON ps.postStatusKey=psc.postStatusKey
WHERE psc.changeDateTime=
(SELECT max(pscc.changeDateTime) FROM PostStatusChange pscc
WHERE pscc.postKey=p.postKey
GROUP BY pscc.postKey) AND ps.postStatusName='Active';
SELECT * FROM activePostView;

CREATE TRIGGER aaaa BEFORE INSERT ON Reservation
FOR EACH ROW
	BEGIN
           IF NEW.seatsCount < 0 THEN
               SET NEW.amount = 0;
           ELSEIF NEW.amount > 100 THEN
               SET NEW.amount = 100;
           END IF;
       END;//
    
 SELECT seatsCount- FROM activePostView apv
 
SELECT sum(r.seatsCount) FROM Reservation r JOIN ReservationStatusChange rsc
ON r.reservationKey=rsc.reservationKey 
JOIN ReservationStatus rs 
ON rsc.reservationStatusKey=rs.reservationStatusKey
WHERE rsc.changeDateTime=
	(SELECT max(rscc.changeDateTime) FROM ReservationStatusChange rscc
		WHERE rscc.reservationKey=r.reservationKey)
AND rs.reservationStatusName NOT IN ('Canceled','Rejected')
GROUP BY r.postKey