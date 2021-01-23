-- Create new connection
CREATE USER testUser1 IDENTIFIED BY tu1;
GRANT DBA to testUser1;

-- Drop all tables
DROP TABLE Car CASCADE CONSTRAINTS;
DROP TABLE CarColor CASCADE CONSTRAINTS;
DROP TABLE CarColorType CASCADE CONSTRAINTS;
DROP TABLE CarMark CASCADE CONSTRAINTS;
DROP TABLE Address CASCADE CONSTRAINTS;
DROP TABLE City CASCADE CONSTRAINTS;
DROP TABLE Country CASCADE CONSTRAINTS;
DROP TABLE Reservation CASCADE CONSTRAINTS;
DROP TABLE ReservationStatusHistory CASCADE CONSTRAINTS;
DROP TABLE ReservationStatus CASCADE CONSTRAINTS;
DROP TABLE Payment CASCADE CONSTRAINTS;
DROP TABLE PaymentMethod CASCADE CONSTRAINTS;
DROP TABLE Post CASCADE CONSTRAINTS;
DROP TABLE PostStatusHistory CASCADE CONSTRAINTS;
DROP TABLE PostStatus CASCADE CONSTRAINTS;
DROP TABLE PaymentStatus CASCADE CONSTRAINTS;
DROP TABLE "USER" CASCADE CONSTRAINTS;
DROP TABLE UserStatusHistory CASCADE CONSTRAINTS;
DROP TABLE UserStatus CASCADE CONSTRAINTS;

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
