use bank;

select avg(amount) as avg_amount from transactions; 

select * from Transactions
where Amount > (
select avg(Amount) from Transactions);

select AccountId, AccounType, Balance, CustomerId 
from Accounts
where Balance > (
select avg(balance) from Accounts)
order by Balance desc;

select AccountId, AccounType, Balance, CustomerId 
from Accounts
where AccountId in (
select AccountId from Transactions
where TransactionType = 'Deposit');

select AccountId, AccounType, Balance, CustomerId 
from Accounts
where balance = (
select max(balance) from Accounts);