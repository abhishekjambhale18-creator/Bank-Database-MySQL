use bank;

select * from transactions;

select transactiontype, amount, row_number() over() from transactions;

select transactiontype, amount, row_number() over(order by amount) from transactions;

select transactiontype, amount, row_number() over(order by amount desc) from transactions;

select transactiontype, amount, row_number() over(partition by transactiontype order by amount) as row_no from transactions;

select transactiondate, amount, transactiontype, lag(amount) over(order by transactiondate) from transactions;

select transactiondate, amount, transactiontype, lag(amount) over(partition by transactiontype order by transactiondate) from transactions;

select transactiondate, amount, transactiontype, lead(amount) over(order by transactiondate) from transactions;

select transactiondate, amount, transactiontype, lead(amount) over(partition by transactiontype order by transactiondate) from transactions;

select * from loans;

select LoanId, CustomerId , LoanAmount, rank() over(order by loanamount desc) as LoanRank from loans;

select LoanId, CustomerId, LoanAmount, dense_rank() over(order by loanamount desc) as DenseRank from loans;

select LoanId, CustomerId, LoanAmount, row_number() over(order by LoanAmount desc) as RowNumber from loans;

insert into loans values(306,30000,9.15,"2025-06-15","2031-05-15",101);

select LoanId, CustomerId, LoanAmount, row_number() over(partition by CustomerId order by LoanAmount desc) as RowNumber from loans;

select LoanId, CustomerId, LoanAmount, sum(LoanAmount) over(order by LoanAmount) as RunningTotal from loans;

select LoanId, CustomerId, LoanAmount, lag(LoanAmount) over(order by LoanAmount) as PreviousLoanAmount from loans;

select LoanId, CustomerId, LoanAmount, lead(LoanAmount) over(order by LoanAmount) as NextLoanAmount from loans;
