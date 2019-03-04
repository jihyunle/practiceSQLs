create database multiTable;
use multiTable;
-- tables that have data = "tables"
-- tables that link tables together = "relations"


-- this is a table
CREATE TABLE person (
	id INTEGER PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age INTEGER
);

-- this is a table
CREATE TABLE pet (
	id INTEGER PRIMARY KEY,
	name VARCHAR(50),
	breed VARCHAR(50),
	age INTEGER,
	dead INTEGER
);


-- this is a relation
CREATE TABLE person_pet (
	person_id INTEGER,
    pet_id INTEGER
);

-- In these tables I made a 3rd relation table to link them. 
-- How would you get rid of this relation table person_pet and 
-- put that information right into person? 
-- What's the implication of this change?
drop table person_pet;
-- create a new field called pet_id under person table, then add it 


-- this is a table
CREATE table cars (
	id INTEGER PRIMARY KEY,
    model VARCHAR(50),
    make VARCHAR(50),
    year INTEGER
);

-- this is a relation
CREATE TABLE person_car (
	person_id INTEGER,
    car_id INTEGER
);
    
    
    

