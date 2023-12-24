
create database library;

use library; 
CREATE TABLE books (
bid int  NOT NULL AUTO_INCREMENT,
book_name varchar(50) NOT NULL,
book_publisher varchar(50) NOT NULL,
book_edition varchar(50) NOT NULL,
book_genre varchar(20) NOT NULL,
book_price int NOT NULL,
book_pages int  NOT NULL,
PRIMARY KEY(bid)
);

CREATE TABLE users (
UID int NOT NULL AUTO_INCREMENT,
USERNAME varchar(30) NOT NULL,
PASSWORD varchar(30) NOT NULL,
USER_TYPE int NOT NULL,
PRIMARY KEY (UID)
);

CREATE TABLE issued_books (
IID int NOT NULL AUTO_INCREMENT,
UID int NOT NULL,
BID int NOT NULL,
ISSUED_DATE varchar(20) NOT NULL,
PERIOD int NOT NULL,
PRIMARY KEY (IID),
KEY UID (UID),
KEY BID (BID),
CONSTRAINT issued_books_ibfk_2 FOREIGN KEY (BID) REFERENCES books (bid),
CONSTRAINT issued_books_ibfk_1 FOREIGN KEY (UID) REFERENCES users (UID)
);

CREATE TABLE returned_books (
rid int NOT NULL AUTO_INCREMENT,
bid int NOT NULL,
uid int NOT NULL,
return_date varchar(50) NOT NULL,
fine int NOT NULL DEFAULT '0',
PRIMARY KEY (rid),
KEY uid (uid),
KEY bid (bid),
CONSTRAINT returned_books_ibfk_2 FOREIGN KEY (bid) REFERENCES books (bid),
CONSTRAINT returned_books_ibfk_1 FOREIGN KEY (uid) REFERENCES users (UID)
);

