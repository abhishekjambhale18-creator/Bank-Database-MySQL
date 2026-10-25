create database bank;

use bank;

create table Accounts(
AccountId int,
AccounType varchar(20),
Balance float);
select * from Accounts;

create table Transactions(
TransactionId int,
TransactionDate date,
Amount float,
TransactionType varchar(20));
select * from Transactions;

create table Branches(
BranchId int,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15));
select * from Branches;

create table AccountBranches(
AssignmentDate date);
select * from AccountBranches;

create table Loans(
LoanId int,
LoanAmount float,
InterestRate float,
StartDate date,
EndDate date);
select * from Loans;

create table Customer(
CustomerId int,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
Phone varchar(15));
select * from Customer;

rename table Customer to Customers;

select * from Customers;

alter table Customers add column DateOfBirth date;

alter table Customers modify Phone varchar(20);