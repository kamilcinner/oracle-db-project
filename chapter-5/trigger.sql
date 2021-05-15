
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
