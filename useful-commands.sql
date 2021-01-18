-- Create new connection
CREATE USER testUser1 IDENTIFIED BY tu1;
GRANT DBA to testUser1;

-- Drop all tables
DROP TABLE Car CASCADE CONSTRAINTS;
DROP TABLE CarColor CASCADE CONSTRAINTS;
DROP TABLE CarMark CASCADE CONSTRAINTS;
DROP TABLE Address CASCADE CONSTRAINTS;
DROP TABLE City CASCADE CONSTRAINTS;
DROP TABLE Country CASCADE CONSTRAINTS;
DROP TABLE Travel CASCADE CONSTRAINTS;
DROP TABLE Payment CASCADE CONSTRAINTS;
DROP TABLE PaymentMethod CASCADE CONSTRAINTS;
DROP TABLE Post CASCADE CONSTRAINTS;
DROP TABLE PostStatus CASCADE CONSTRAINTS;
DROP TABLE PaymentStatus CASCADE CONSTRAINTS;
DROP TABLE BlaBlaUser CASCADE CONSTRAINTS;
