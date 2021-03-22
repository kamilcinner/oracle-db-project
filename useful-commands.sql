-- Create new connection
CREATE USER testUser1 IDENTIFIED BY tu1;
GRANT DBA to testUser1;

-- Drop all tables
DROP TABLE IF EXISTS Car;
DROP TABLE IF EXISTS CarColor;
DROP TABLE IF EXISTS CarColorType;
DROP TABLE IF EXISTS CarMark;
DROP TABLE IF EXISTS CarType;
DROP TABLE IF EXISTS Address;
DROP TABLE IF EXISTS City;
DROP TABLE IF EXISTS Country;
DROP TABLE IF EXISTS Reservation;
DROP TABLE IF EXISTS ReservationStatusHistory;
DROP TABLE IF EXISTS ReservationStatus;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS PaymentMethod;
DROP TABLE IF EXISTS Post;
DROP TABLE IF EXISTS PostStatusHistory;
DROP TABLE IF EXISTS PostStatus;
DROP TABLE IF EXISTS PaymentStatusHistory;
DROP TABLE IF EXISTS PaymentStatus;
DROP TABLE IF EXISTS `USER`;
DROP TABLE IF EXISTS UserStatusHistory;
DROP TABLE IF EXISTS UserStatus;
DROP TABLE IF EXISTS UserRole;
DROP TABLE IF EXISTS `ROLE`;

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
