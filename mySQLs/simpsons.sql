-- drop database Customers; -- drop means delete
create database Customers;
use Customers;

CREATE TABLE PersonsTest (
ID int NOT NULL auto_increment,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
PRIMARY KEY(ID)
);

insert into PersonsTest (LastName, FirstName) values('simpson','bart');
insert into PersonsTest (LastName, FirstName) values('simpson','lisa');
insert into PersonsTest (LastName, FirstName) values('simpson','homer');

select * from PersonsTest;

drop table PersonsTest;

select ID, FirstName, LastName from PersonsTest;

update PersonsTest set LastName = simpson-larter where id = 2;
