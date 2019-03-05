-- drop database People;
create database People;
use People;

-- The start of the "CREATE TABLE" which gives the name of the table as person2. 
-- You then put the fields you want inside parenthesis after this setup.
CREATE TABLE person2 (
	-- An id column which will be used to exactly identify each row. 
    -- The format of a column is NAME TYPE, and in this case I'm saying I want an INTEGER that is also a PRIMARY KEY. 
    -- Doing this tells SQLite3 to treat this column special.
    id INTEGER PRIMARY KEY,
    -- A first_name and a last_name column which are both of type VARCHAR. 
    -- They both can hold up to 50 characters.
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    -- An age column that is just a plain INTEGER.
    age INTEGER
-- Ending of the list of columns with a closing parenthesis and 
-- then a semi-colon ';' character.     
);

insert into person2 (id, first_name, last_name, age)
values (0, 'Dave', 'Wolf', 25);

insert into person2 values (1, 'Linda', 'Wolf', 30);

select * from person2;

select first_Name from person2 where id!=1;

insert into person2 values (2, 'Dave', 'Lincoln', 60);

select id, first_name, age 
	from person2
    where age=25;

delete from person2 where id=2;

select * from person2;

update person2
set last_name = 'Mercy' 
where id = 1;

select * from person2;
