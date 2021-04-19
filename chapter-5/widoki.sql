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