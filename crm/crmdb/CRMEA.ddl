CREATE TABLE Baptism (id int(10) NOT NULL AUTO_INCREMENT, memberid int(10) NOT NULL, cname varchar(100) NOT NULL 																																				, dateOfBaptism date NOT NULL, firstCommunion date, baptismNumber int(10) NOT NULL UNIQUE, physicalAddress varchar(100) NOT NULL, Userid int(10) NOT NULL, Parishid int(10) NOT NULL, Sponsorid int(10) NOT NULL, ministerid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Confirmation (id int(10) NOT NULL AUTO_INCREMENT, memberid int(10) NOT NULL, dateOfConfirmation date NOT NULL, ministerid int(10) NOT NULL, baptizedBy varchar(50) NOT NULL, Parishid int(10) NOT NULL, Sponsorid int(10) NOT NULL, Userid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Death (id int(10) NOT NULL AUTO_INCREMENT, memberid int(10) NOT NULL, spouseMemberID int(10), dod date NOT NULL comment 'Date of death', placeOfDeath varchar(100) NOT NULL, dateOfBurial date NOT NULL, placeOfBurial varchar(100) NOT NULL, sacramentAdministered varchar(255), Parishid int(10) NOT NULL, ministerid int(10) NOT NULL, Userid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Matrimonial (id int(10) NOT NULL AUTO_INCREMENT, marriageNumber int(10) NOT NULL UNIQUE, dateOfMarriage date NOT NULL, husbandMemberID int(10) NOT NULL, husbandAddress varchar(100) NOT NULL, wifeMemberID int(10) NOT NULL, wifeAddress varchar(100) NOT NULL, conditionOfHus varchar(15) NOT NULL, conditionOfWife varchar(15) NOT NULL, consentHus varchar(10) NOT NULL, consentWife varchar(15) NOT NULL, marriageBy varchar(20) NOT NULL, husbandSponsorID int(10) NOT NULL, wifeSponsorID int(10) NOT NULL, officialDesignation varchar(100) NOT NULL, ministerid int(10) NOT NULL, Parishid int(10) NOT NULL, Userid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE member (id int(10) NOT NULL AUTO_INCREMENT, fname varchar(50) NOT NULL comment 'First name column', mname varchar(50) comment 'Middle Name Column', lname varchar(50) NOT NULL comment 'Last Name Column', sex varchar(10) NOT NULL comment 'Gender Column', dob date NOT NULL comment 'Date of Birth Column', age int(10) NOT NULL comment 'Age of catholic member', placeOfBirth varchar(100) NOT NULL, contact varchar(255) NOT NULL comment 'Contact details column', ffname varchar(50) comment 'Father''s First Name', fmname varchar(50) comment 'Father''s Middle Name', flname varchar(50) comment 'Father''s Last Name', mfname varchar(50) comment 'Mother''s First Name', mmname varchar(50) comment 'Mother''s Middle Name', mlname varchar(50) comment 'Mother''s Middle name', natID varchar(15), fnatID varchar(15), mnatID varchar(15), Userid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE `User` (id int(10) NOT NULL AUTO_INCREMENT, username varchar(20) NOT NULL, password varchar(255) NOT NULL, usergroup int(10) NOT NULL, designation varchar(20) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Sponsor (id int(10) NOT NULL AUTO_INCREMENT, fname varchar(50) NOT NULL comment 'First name column', mname varchar(50) comment 'Middle Name Column', lname varchar(50) NOT NULL comment 'Last Name Column', sex varchar(10) NOT NULL comment 'Gender Column', dob date NOT NULL comment 'Date of Birth Column', age int(10) NOT NULL comment 'Age of catholic member', natID varchar(15) NOT NULL, contact varchar(255) NOT NULL comment 'Contact details column', PRIMARY KEY (id));
CREATE TABLE minister (id int(10) NOT NULL AUTO_INCREMENT, fname varchar(50) NOT NULL, lname varchar(50) NOT NULL, priestorder varchar(50) NOT NULL, rank varchar(50) NOT NULL, contact varchar(50) NOT NULL, natID varchar(15) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Parish (id int(10) NOT NULL AUTO_INCREMENT, name varchar(50) NOT NULL, physicalAddress varchar(50) NOT NULL, contact varchar(50) NOT NULL, PRIMARY KEY (id));
ALTER TABLE Confirmation ADD INDEX FKConfirmati961378 (Userid), ADD CONSTRAINT FKConfirmati961378 FOREIGN KEY (Userid) REFERENCES `User` (id);
ALTER TABLE Baptism ADD INDEX FKBaptism790679 (Userid), ADD CONSTRAINT FKBaptism790679 FOREIGN KEY (Userid) REFERENCES `User` (id);
ALTER TABLE Matrimonial ADD INDEX FKMatrimonia118417 (Userid), ADD CONSTRAINT FKMatrimonia118417 FOREIGN KEY (Userid) REFERENCES `User` (id);
ALTER TABLE Death ADD INDEX FKDeath609843 (Userid), ADD CONSTRAINT FKDeath609843 FOREIGN KEY (Userid) REFERENCES `User` (id);
ALTER TABLE member ADD INDEX FKmember685793 (Userid), ADD CONSTRAINT FKmember685793 FOREIGN KEY (Userid) REFERENCES `User` (id);
ALTER TABLE Confirmation ADD INDEX `one bishop conducts many confirmations` (ministerid), ADD CONSTRAINT `one bishop conducts many confirmations` FOREIGN KEY (ministerid) REFERENCES minister (id);
ALTER TABLE Baptism ADD INDEX `one priest conducts many baptisms` (ministerid), ADD CONSTRAINT `one priest conducts many baptisms` FOREIGN KEY (ministerid) REFERENCES minister (id);
ALTER TABLE Matrimonial ADD INDEX `one priest conducts many matrimonial masses` (ministerid), ADD CONSTRAINT `one priest conducts many matrimonial masses` FOREIGN KEY (ministerid) REFERENCES minister (id);
ALTER TABLE Death ADD INDEX `One priest conducts Many Death Mass` (ministerid), ADD CONSTRAINT `One priest conducts Many Death Mass` FOREIGN KEY (ministerid) REFERENCES minister (id);
ALTER TABLE Confirmation ADD INDEX `one sponsor has many confirmation children` (Sponsorid), ADD CONSTRAINT `one sponsor has many confirmation children` FOREIGN KEY (Sponsorid) REFERENCES Sponsor (id);
ALTER TABLE Baptism ADD INDEX `one sponsor has many baptism children` (Sponsorid), ADD CONSTRAINT `one sponsor has many baptism children` FOREIGN KEY (Sponsorid) REFERENCES Sponsor (id);
ALTER TABLE Confirmation ADD INDEX `one parish has many confirmations` (Parishid), ADD CONSTRAINT `one parish has many confirmations` FOREIGN KEY (Parishid) REFERENCES Parish (id);
ALTER TABLE Baptism ADD INDEX `one parish has many baptisms` (Parishid), ADD CONSTRAINT `one parish has many baptisms` FOREIGN KEY (Parishid) REFERENCES Parish (id);
ALTER TABLE Matrimonial ADD INDEX `one parish has many marriages` (Parishid), ADD CONSTRAINT `one parish has many marriages` FOREIGN KEY (Parishid) REFERENCES Parish (id);
ALTER TABLE Death ADD INDEX `one parish has many deaths` (Parishid), ADD CONSTRAINT `one parish has many deaths` FOREIGN KEY (Parishid) REFERENCES Parish (id);
ALTER TABLE Death ADD INDEX `One Member dies Only Once` (memberid), ADD CONSTRAINT `One Member dies Only Once` FOREIGN KEY (memberid) REFERENCES member (id);
ALTER TABLE Baptism ADD INDEX `One member is baptized Only once` (memberid), ADD CONSTRAINT `One member is baptized Only once` FOREIGN KEY (memberid) REFERENCES member (id);
ALTER TABLE Confirmation ADD INDEX `One member is confirmed Only once` (memberid), ADD CONSTRAINT `One member is confirmed Only once` FOREIGN KEY (memberid) REFERENCES member (id);
