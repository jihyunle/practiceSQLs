-- drop database TableA;
-- drop database TableB;

create database joins;
use TableA;

CREATE TABLE TableA (
ID bigint NOT NULL auto_increment,
characters varchar(255) NOT NULL,
PRIMARY KEY(ID)
);

insert into TableA (characters) values ('pirate');
insert into TableA (characters) values ('monkey');
insert into TableA (characters) values ('ninja');
insert into TableA (characters) values ('spaghetti');
insert into TableA (characters) values ('frujen');

select * from TableA; -- shows us what's in table A thus far


CREATE TABLE TableB (
ID int NOT NULL auto_increment,
characters varchar(255) NOT NULL,
PRIMARY KEY(ID)
);

insert into TableB (characters) values ('rutabaga');
insert into TableB (characters) values ('pirate');
insert into TableB (characters) values ('darth vader');
insert into TableB (characters) values ('ninja');
insert into TableB (characters) values ('han');

select * from TableB;

SELECT * FROM TableA
INNER JOIN TableB
ON TableA.name = TableB.name

