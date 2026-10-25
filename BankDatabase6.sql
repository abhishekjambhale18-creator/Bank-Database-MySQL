use bank;

-- 1. Retrieve all current account records
select * from accounts where accountype="current";

-- 2. Find accounts with balance less than 15000
select * from accounts where balance<=15000;

-- 3. Display transactions between 1000 and 10000
select * from transactions where amount between 1000 and 10000;

-- 4. Retrieve customer records for CustomerID 104 and 105
select * from customers where customerid in (104,105);

-- 5. Display customers whose last name starts with S
select * from customers where firstname like "s%";
 
-- 6. Display Customers in Alphabetical Order
select * from customers order by firstname;

-- 7. Display Accounts with Highest Balance First
select accountype, max(balance) from accounts group by accountype order by max(balance) desc limit 1;
select * from accounts order by balance desc limit 1;

-- 8. Retrieve Unique Account Types
select distinct(accountype) from accounts;

-- 9. Display Top 3 Highest Balance Accounts
select * from accounts order by balance desc limit 3;

-- 10. Skip Initial Records While Viewing Transactions
select * from transactions limit 4 offset 1;
 
-- 11. Display customers sorted by LastName
select * from customers order by lastname;

-- 12. Retrieve top 5 transactions with highest amount
select * from transactions order by amount desc limit 5;

-- 13. Display unique transaction types
select distinct(transactiontype) from transactions;

-- 14. Skip the first 3 transaction records and display the next 4 records
select * from transactions limit 4 offset 3;

-- 15. Find Customers Without Phone Numbers
select customerid, firstname, lastname, email,dateofbirth from customers; 

-- 16. Find Customers Having Email Addresses
select * from customers where email is not null;
 
-- 17. Find customers without email addresses
select * from customers where email is null;

-- 18. Display all accounts where balance information is available
 select * from accounts where balance is not null;
 
-- 19. Search Customers Whose First Name Starts with “A”
select * from customers where firstname like "a%";

-- 20. Search Customers Whose Email Contains “gmail”
select * from customers where email like "%gmail%";

-- 21. Search Customers Whose Last Name Ends with “kar”
 select * from customers where lastname like "%kar";
 
-- 22. Display customers whose first name starts with R
select * from customers where firstname like "r%";

-- 23. Find customers whose email contains yahoo
select * from customers where email like "%yahoo%";

-- 24. Display customers whose last name starts with P
select * from customers where lastname like "p%";

-- 25. Search customers whose phone number ends with 99
select * from customers where phone regexp "99$";
 
-- 26. The finance team wants to review only Savings and Current account holders.
select * from accounts where accountype in ("savings","current");

-- 27. The audit department wants to investigate only Deposit and Withdrawal transactions.
select * from transactions where transactiontype in ("deposite","withdrawal");

-- 28. The customer relationship team wants to review records for a specific set of customers. 101,102,105
select * from customers where customerid in (101,102,105);

-- 29. Display accounts belonging to Salary and Savings account types
select * from accounts where accountype in("salary","savings");

-- 30. Retrieve transactions for Payment and Deposit categories
select * from transactions where transactiontype in ("payment","deposite");

-- 31. Display customer records for CustomerID 103 and 104
select * from customers where customerid in (103,104);

-- 32. Retrieve selected account records using AccountID values
select * from accounts where accountid=203;
 
-- 33. Display Customers in Ascending Order of Last Name
select * from customers order by lastname asc;

-- 34. Display Accounts with Highest Balance First
select * from accounts order by balance desc limit 1;

-- 35. Display Transactions Sorted by Transaction Date
select * from transactions order by transactiondate;
 
-- 36. Display customers sorted by FirstName
select * from customers order by firstname;

-- 37. Display accounts sorted by AccountType
select * from accounts order by accountype;

-- 38. Display transactions sorted by Amount in descending order
select * from transactions order by amount desc;

-- 39. Display customers sorted by DateOfBirth
select * from customers order by dateofbirth;

-- 40. Display Only Top 5 Highest Balance Accounts
select * from accounts order by balance desc limit 5;

-- 41. Display First 3 Customer Records
select * from customers limit 3;

-- 42. Skip Initial Transaction Records 3 While Viewing Data record 2
select * from transactions limit 5 offset 3;
 
-- 43. Display top 3 transactions with highest amount
select * from transactions order by amount desc;

-- 44. Retrieve only 4 customer records
select * from customers limit 4;

-- 45. Skip first 2 account records and display next 3 records
select * from accounts limit 5 offset 2;

-- 46. Display top 5 latest transactions
select * from transactions limit 5;
 
-- 47. Display Savings Account Customers Sorted by Balance
select * from accounts where accountype="savings" order by balance;

-- 48. Categorize Accounts Using Balance, Balance >50000 then premium account, Balance >2500 then standar account
select accountype, balance, case when balance>=50000 then "Premium Account" when balance>=25000 then "Standard Account" end as Type from accounts;

-- 49. High Transaction, Medium Transaction, Low Transaction based on transaction amount.
select transactiontype, amount, case when amount>=10000 then "High Transactions" when amount>=5000 then "Medium Transactions" when amount>=1000 then "Low Transactions" end as Type from transactions;