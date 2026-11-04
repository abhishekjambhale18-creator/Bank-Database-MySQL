use bank;

create view High_Balance_Accounts as
select AccountID, AccounType, Balance, CustomerID
from Accounts
where Balance > 30000;

select * from High_Balance_Accounts;

create or replace view High_Balance_Accounts as
select a.AccountID, a.AccounType, a.Balance, a.CustomerID,
	   t.TransactionID, t.TransactionDate, t.TransactionType, t.Amount
from Accounts a
inner join Transactions t
on a.AccountID = t.AccountID
where a.Balance > 30000;

select AccountID, AccounType, Balance, CustomerID,
	   TransactionID, TransactionDate, TransactionType, Amount
from High_Balance_Accounts
order by Balance desc;
