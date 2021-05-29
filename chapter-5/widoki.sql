-- Wybiera średnią cenę za miejsce obliczoną na podstawie każdego ogłoszenia
DROP VIEW avSeatPriceView;

CREATE VIEW avSeatPriceView AS SELECT round(avg(seatPrice),2) AS "Średnia cena za miejsce" FROM Post;

SELECT * FROM avSeatPriceView;

-- Wybiera ogłoszenia ze statusem "Active" - aktywny
DROP VIEW activePostView;

CREATE VIEW activePostView AS SELECT
p.postKey, p.departureDateTime, p.arrivalDateTime, p.seatsCount, p.seatPrice, p.departureAddressKey,
p.arrivalAddressKey, p.carKey
FROM Post p
INNER JOIN PostStatusChange psc ON p.postKey=psc.postKey
INNER JOIN PostStatus ps ON ps.postStatusKey=psc.postStatusKey
WHERE psc.changeDateTime=
(SELECT max(pscc.changeDateTime) FROM PostStatusChange pscc
WHERE pscc.postKey=p.postKey
) AND ps.postStatusName='Active';

SELECT * FROM activePostView;

