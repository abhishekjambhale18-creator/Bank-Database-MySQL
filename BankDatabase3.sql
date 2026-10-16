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

alter table Loans add column CustomerId int;

alter table Loans add constraint FK_Loans_Customers foreign key(CustomerId) references Customers(CustomerId);

select * from Loans;

alter table Accounts add constraint pk primary key(AccountId);

alter table Transactions add column AccountId int;

alter table Transactions add constraint FK_Transactions_Accounts foreign key(AccountId) references Accounts(AccountId);

select * from Transactions;

alter table Branches add constraint pk primary key(BranchId);

alter table Accounts add column BranchId int;

alter table Accounts add constraint FK_Accounts_Branches foreign key(BranchId) references Branches(BranchId);

select * from Accounts;