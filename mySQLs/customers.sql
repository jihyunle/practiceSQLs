/*This activity is an example of normalization. 
Normalize for two more fields besides company. 
SpringBoot will do the relations for us.
*/
 
-- drop database customers; -- only if you're starting over
create database customers;
use customers;

-- see how many customers are in our table
select count(*) as 'customer count' from customer;

-- how many unique companies are in our table
select count(distinct company) as 'Distinct Companies' from customer;

-- add an Id to the customer table
alter table Customer add CustomerId int not null primary key auto_increment;

-- add a column for the CompanyID to the customer table
alter table Customer add CompanyID int;

-- notice that the companyId is null
select companyID, company from customer;

/*create a table for the companies. this statement will also create a companyID column 
which will increment when you insert a new record*/
create table Company (
	companyID int NOT NULL AUTO_INCREMENT,
    Company varchar(255),
    primary key (companyID)
);

-- see what's in your company table now
select * from company;

-- generate a sql statement which shows which companies will be added to the new customer table
select distinct company from Customer where length(company)>0 and company is not null order by company;

-- add the above companies from customers to the company table
insert into Company (company) select distinct company from Customer where length(company)>0 and company is not null order by company;

-- look at what you've done
select * from Company;

-- another way to select is to list the fields
select companyID, Company from Company;

-- update the companyID in the customers table
update Customer c set c.companyID = (select t.companyID from 
Company t where t.company=c.company limit 1);

-- query to check your data
select c.companyID, c.company, t.companyID, t.Company from 
Customer c inner join Company t on c.CompanyID = t.CompanyID;

-- remove the company column from the customers table. It's no longer needed
	-- alter table Customer drop column company;


-- You can generate fullname more efficiently as:
select CONCAT(FirstName, ' ', LastName) as 'Full Name' from Customer;

-- notice you won't see the company (or fullname) column 
select * from Customer;

-- the company column and the id are in Company
select * from Company;
	-- truncate Company; -- that will delete all the records

-- a query to bring it all back together
select CONCAT(FirstName, ' ', LastName) as 'Full Name', customer.company from Customer
inner join Company on
customer.companyid=Company.companyid;

