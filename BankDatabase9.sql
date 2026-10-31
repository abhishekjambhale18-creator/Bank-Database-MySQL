use bank;

select a.AccountID, a.AccounType, a.Balance, t.TransactionID, t.TransactionDate, t.TransactionType, t.Amount
from Accounts a
inner join Transactions t
on a.AccountID = t.AccountID;

select a.AccountID, a.AccounType, a.Balance, t.TransactionID, t.TransactionDate, t.TransactionType, t.Amount
from Accounts a
left join Transactions t
on a.AccountID = t.AccountID;

select a.AccountID, a.AccounType, a.Balance, t.TransactionID, t.TransactionDate, t.TransactionType, t.Amount
from Accounts a
left join Transactions t
on a.AccountID = t.AccountID
where t.TransactionType="Deposit";

select a.AccountID, a.AccounType, a.Balance, t.TransactionID, t.TransactionDate, t.TransactionType, t.Amount
from Accounts a
inner join Transactions t
on a.AccountID = t.AccountID
where a.Balance > 30000
order by a.Balance desc;