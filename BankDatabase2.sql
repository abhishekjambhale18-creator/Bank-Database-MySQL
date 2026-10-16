use bank;

SELECT * FROM bank.accounts;

alter table accounts add constraint chk_MinBal check(Balance>=1000);

drop table AccountBranches;

alter table Customers add constraint pk primary key(CustomerId);

alter table Customers modify FirstName varchar(50) not null;

alter table Customers add constraint uk unique(Email);

select * from Customers;

alter table Accounts add column CustomerId int;

alter table Accounts add constraint FK_Accounts_Customers foreign key(CustomerId) references Customers(CustomerId);

select * from Accounts;