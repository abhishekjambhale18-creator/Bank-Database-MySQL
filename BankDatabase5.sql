use bank;

-- Q1
select AccountId, AccounType, Balance from accounts;

-- Q2
select * from accounts where accountype="Savings";

-- Q3
select * from accounts where balance>25000;

-- Q4
select * from transactions where amount>=5000 and amount<=20000;
select * from transactions where amount between 5000 and 20000;

-- Q5
select * from customers where customerid=101 or customerid=102 or customerid=103 or customerid=104;
select * from customers where not customerid=105;
select * from customers where customerid between 101 and 104;
select * from customers where customerid in(101,102,103,104);

-- Q6
select * from accounts where accountype="Current";

-- Q7
select * from accounts where balance<=15000;

-- Q8
select * from transactions where amount between 1000 and 10000;
select * from transactions where amount>=1000 and amount<=10000;

-- Q9
select * from customers where customerid=104 or customerid=105;
select * from customers where customerid between 104 and 105;
select * from customers where customerid in (104,105);

-- Q10
select * from loans where interestrate>=9 and loanamount>=50000;

-- Q11
select * from branches where branchaddress="Shivaji Nagar, Pune";

-- Q12
select * from accounts where balance between 500 and 5000;

-- Q13
select * from accounts where balance>=25000 and accountype="savings";

-- Q14
select * from loans where interestrate<=8.50;

-- Q15
select * from customers where DateOfBirth>"1998-01-01";

-- Q16
select * from branches where branchid between 2 and 4;

-- Q17
select branchname, branchphone from branches;

-- Q18
select * from customers limit 2 offset 1;

-- Q19 
select * from customers where lastname like "P%";

-- Q20
select * from transactions where transactiontype="deposit";

-- Q21
select * from transactions limit 5 offset 2;

-- Q22
select * from transactions where transactiondate between "2025-05-11" and "2025-05-13";

-- Q23
select * from branches where branchid between 1 and 4;

-- Q24
select * from customers where firstname="rahul" or firstname="sneha";

-- Q25
select * from transactions where amount>=3000 and transactiontype="deposit";