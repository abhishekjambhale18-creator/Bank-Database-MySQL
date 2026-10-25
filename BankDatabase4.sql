use bank;

insert into customers values(101,"Rahul","Sharma","rahul.sharma@gmail.com","9999999999","1998-04-15");
insert into customers values(102,"Priya","Patil","priya@gmail.com","9988776655","2000-09-20");
insert into customers values(103,"Amit","Patel","amit.patel@gmail.com","9876500001","1995-06-18");
insert into customers values(104,"Sneha","Joshi","sneha.joshi@gmail.com","9876500002","1997-09-12");
insert into customers values(105,"Rohan","Kulkarni","rohan.k@gmail.com","9876500003","1993-11-25");

select * from customers;

insert into loans values(301,500000,8.50,"2025-01-15","2030-01-15",101);
insert into loans values(302,300000,9.25,"2025-02-10","2028-02-10",102),
						(303,750000,8.75,"2025-03-20","2032-03-20",103),
                        (304,250000,10.00,"2025-04-05","2029-04-05",104),
                        (305,1000000,7.95,"2025-05-12","2035-05-12",105);
                        
select * from loans;

insert into branches values(1,"Mumbai Branch","Andheri, Mumbai","0221111111");
insert into branches values(2,"Pune Branch","Shivaji Nagar, Pune","0202222222");
insert into branches values(3,"Nashik Branch","College Road, Nashik","0253222222"),
                            (4,"Nagpur Branch","Sitabuldi, Nagpur","0712333333");
insert into branches values(5,"Navi Mumbai Branch","Vashi, Navi Mumbai","0224444444");

select * from branches;

insert into accounts values(201,"Savings",25000,101,default);
insert into accounts values(202,"Current",40000,102,default),(203,"Savings",35000,103,default),
							(204,"Current",60000,104,default),(205,"Savings",45000,105,default);

select * from accounts;

insert into transactions values(301,"2025-05-10",5000,"Deposit",201);
insert into transactions values(302,"2025-05-11",2500,"Withdraw",202),(303,"2025-05-12",10000,"Deposit",203),
								(304,"2025-05-13",3000,"Withdraw",204),(305,"2025-05-14",7000,"Deposite",205);
                                
select * from transactions;

update customers set phone="8888888888" where customerid=101;

update customers set email="rahul_sharma@gmail.com" where customerid=101;

update accounts set balance=30000 where accountid=201;

select * from customers;

select * from accounts;

delete from transactions where transactionid=302;

delete from accounts where accountid=202;

select * from transactions;

select * from accounts;