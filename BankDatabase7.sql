use bank;

-- Q1. Display customer Table
select * from customers;

-- Q2. Display all customer FirstName in uppercase.
select firstname, upper(firstname) as upper_name from customers;

-- Q3. Display all customer FirstName in lowercase.
select firstname, lower(firstname) as lower_name from customers;

-- Q4. Find the total number of characters in each customer FirstName
select firstname, length(firstname) as name_length from customers;

-- Q5. Display only the first three characters of customer FirstName .
select firstname, left (firstname,3) as left_name from customers;

-- Q6. Combine customer's FirstName with LastName.
select firstname, lastname, concat(firstname," ",lastname) as full_name from customers;

-- Q7 Display only the last two characters of customer FirstName .
select firstname, right (firstname, 2) as right_name from customers;

-- Q8 Display all customer FirstName removing spaces.
select firstname, trim(firstname) as trim_name from customers;

-- Q9 Display firstname 3 charscters after 2nd position.
select firstname, mid(firstname,2,3) from customers;

-- Q10 Display all string functions combine in single query. 
select firstname, lastname, upper(firstname) as uppercase,lower(firstname) as lowercase, length(firstname) as length_oF_fname, left (firstname,3) as left_name, right (firstname,2) as right_name, concat(firstname," ",lastname) as full_name, trim(firstname) as trim_name, mid(firstname,2,3) midn_ame from customers;

-- Q11 Maths functions combine.
select round(345.86) as round_value, ceil(345.86) as ceil_value, floor(345.86) as floor_value, abs(-345.86) as abs_value, mod(345,25) as remainder;

-- Q12. Display the current system date
select current_date as today_date;

-- Q13. Display the current system date and time.
select now() as date_and_time;

-- Q14. Display the Birth of year
select dateofbirth, year(dateofbirth) as birth_year from customers;

-- Q15. Display the Birth month.
select dateofbirth, month(dateofbirth) as birth_month from customers;

-- Q16. Calculate the number of days since BirthDate.
select dateofbirth, current_date() as curent_date, datediff(current_date(), dateofbirth) difference_of_days from customers;

-- Q17. Find the latest birth date.
select dateofbirth as latest_bdate from customers order by dateofbirth desc limit 1;
select max(dateofbirth) as latest_date from customers;

-- Q18. Find the earliest birth date.
select dateofbirth as earliest_bdate from customers order by dateofbirth asc limit 1;
select min(dateofbirth) as earliest_date from customers;

-- Q19. Categorize customers as Adult or Young based on their birth year
select dateofbirth, case when dateofbirth>="1998-01-01" then "Young" when dateofbirth<"1998-01-01" then "Adult" end as Category from customers;
select dateofbirth, if(year(dateofbirth)>=1998,"Young","Adult") from customers;

-- Q20. Display 'Not Available' if a phone number is NULL
select ifnull(phone,"Not Available") from customers;

-- Q21. Compare two customer names
select firstname, nullif(firstname,"Priya") as campare from customers;

-- Q22. Calculate the total balance maintained across all customer accounts.
select sum(balance) as total_balance from accounts;
 
-- Q23. Calculate the average balance maintained across all customer accounts to understand the typical amount held by customers.
select avg(balance) as avg_balance from accounts;

-- Q24. Identify the highest balance maintained in any customer account.
select max(balance) from accounts;

-- Q25. Identify the lowest balance maintained in any customer account
select min(balance) from accounts;

-- Q26. Determine the total number of customer accounts available in the system.
select count(distinct(accountid)) from accounts;

-- Q27. The bank wants to calculate the total account balance for each AccountType by grouping the records based on AccountType and identify which account type is attracting the highest total deposits from customers.
select accountype, sum(balance) as total_balance from accounts group by accountype;

-- Q28. The bank management wants to identify only those account types whose total customer deposits exceed ₹25,000.
select accountype, sum(balance) as total_balance from accounts group by accountype having sum(balance)>=25000;
