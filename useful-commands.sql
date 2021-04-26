-- Create new connection
CREATE USER testUser1 IDENTIFIED BY tu1;
GRANT DBA to testUser1;

-- Drop all tables
SET foreign_key_checks = 0;
DROP TABLE IF EXISTS Car;
DROP TABLE IF EXISTS CarColor;
DROP TABLE IF EXISTS CarMark;
DROP TABLE IF EXISTS CarType;
DROP TABLE IF EXISTS Address;
DROP TABLE IF EXISTS City;
DROP TABLE IF EXISTS Country;
DROP TABLE IF EXISTS Reservation;
DROP TABLE IF EXISTS ReservationStatusChange;
DROP TABLE IF EXISTS ReservationStatus;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS PaymentMethod;
DROP TABLE IF EXISTS Post;
DROP TABLE IF EXISTS PostStatusChange;
DROP TABLE IF EXISTS PostStatus;
DROP TABLE IF EXISTS PaymentStatusChange;
DROP TABLE IF EXISTS PaymentStatus;
DROP TABLE IF EXISTS "user";
DROP TABLE IF EXISTS UserStatusChange;
DROP TABLE IF EXISTS UserStatus;
DROP TABLE IF EXISTS UserRole;
DROP TABLE IF EXISTS Role;
SET foreign_key_checks = 1;

-- Clear all tables
SET foreign_key_checks = 0;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Car;
DELETE FROM CarColor;
DELETE FROM CarMark;
DELETE FROM CarType;
DELETE FROM Address;
DELETE FROM City;
DELETE FROM Country;
DELETE FROM Reservation;
DELETE FROM ReservationStatusChange;
DELETE FROM ReservationStatus;
DELETE FROM Payment;
DELETE FROM PaymentMethod;
DELETE FROM Post;
DELETE FROM PostStatusChange;
DELETE FROM PostStatus;
DELETE FROM PaymentStatusChange;
DELETE FROM PaymentStatus;
DELETE FROM `User`;
DELETE FROM UserStatusChange;
DELETE FROM UserStatus;
DELETE FROM UserRole;
DELETE FROM `Role`;
SET SQL_SAFE_UPDATES = 1;
SET foreign_key_checks = 1;

-- Git commands
git add .
git status
git commit -m 'komentarz'
git push origin master
git pull origin master

git checkout -b nazwa_brancha
git push origin nazwa_brancha
git checkout master
git pull origin master
git merge nazwa_brancha
git push origin master
git branch -d nazwa_brancha
git push origin --delete nazwa_brancha

git remote update --prune

git reset --soft HEAD~1

-- copy caret in VSCode
ctrl + alt + shift + arrow_bottom/arrow_up

-- unix
-- cat delete.sql chapter-4/tabele.sql chapter-4/wiezy.sql chapter-4/zwiazki.sql chapter-5/wypelnienie.sql > test/test.sql
