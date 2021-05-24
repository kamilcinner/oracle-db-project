--ms sql
-- Wybiera identyfikator ogłoszenia i liczbę wolnych miejsc dla niego
--DROP VIEW postAvailableSeatsCount;
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
) AS seatsCount
FROM Post p;

SELECT * FROM postAvailableSeatsCount;

SELECT * FROM Reservation

-- Jeżeli użytkownik chce zarezerwować liczbę miejsc większą niż licza wolnych w ogłoszeniu,
-- to rezerowana jest liczba pozostałych wolnych miejsc
CREATE TRIGGER validateSeatsCount ON dbo.Reservation FOR INSERT AS
    BEGIN
	SET NOCOUNT ON
       IF (SELECT seatsCount FROM inserted) > (
           SELECT pasc.seatsCount FROM postAvailableSeatsCount pasc WHERE (SELECT postKey FROM inserted) = pasc.postKey
       ) BEGIN
			INSERT INTO dbo.Reservation (reservationDateTime,seatsCount,postKey,userKey)
			SELECT ins.reservationDateTime,pasc.seatsCount,ins.postKey,ins.userKey FROM inserted ins 
			INNER JOIN postAvailableSeatsCount pasc
			ON ins.postKey = pasc.postKey
		END
    END


INSERT INTO Reservation (reservationDateTime, seatsCount, postKey, userKey) VALUES
    ('2021-01-05 03:02:01', 3, 2, 1)
;

select * from reservation;
select * from post;
select * from ReservationStatus;

INSERT INTO ReservationStatusChange (changeDateTime, reservationKey, reservationStatusKey) VALUES
    ('2021-01-05 03:02:01', 7, 2)
;



	    SET seatsCount = (
               SELECT pasc.seatsCount FROM postAvailableSeatsCount pasc WHERE postKey = pasc.postKey
           );











CREATE OR REPLACE FUNCTION trigger_function() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $$
DECLARE
        new_seatscount          integer;
BEGIN
   -- trigger logic
   IF NEW.seatsCount > (
           SELECT pasc.seatsCount FROM postAvailableSeatsCount pasc WHERE NEW.postKey = pasc.postKey
       ) THEN
	   		new_seatscount = (
               SELECT pasc.seatsCount FROM postAvailableSeatsCount pasc WHERE NEW.postKey = pasc.postKey
           );
           SET NEW.seatsCount = new_seatscount;
   END IF;
   RETURN NEW;
END;
$$;


-- Jeżeli użytkownik chce zarezerwować liczbę miejsc większą niż licza wolnych w ogłoszeniu,
-- to rezerowana jest liczba pozostałych wolnych miejsc
CREATE TRIGGER validateSeatsCount BEFORE INSERT ON Reservation
FOR EACH ROW
       EXECUTE PROCEDURE trigger_function()
;

-- Reservation (Post, User)
INSERT INTO Reservation (reservationDateTime, seatsCount, postKey, userKey) VALUES
    ('2021-01-05 03:02:01', 3, 2, 1)
;

select * from reservation;
select * from post;
select * from ReservationStatus;

INSERT INTO ReservationStatusChange (changeDateTime, reservationKey, reservationStatusKey) VALUES
    ('2021-01-05 03:02:01', 7, 2)
;
