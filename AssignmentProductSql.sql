
--Q1)1.	Create a table Product as per the following specifications.
create table Product
(
ProductID int not null primary key identity(1,1),
Descriptions varchar(30) not null unique,
SetQty int not null default 1,
Rate decimal(10,2),
Check(Rate >=51 and Rate<=5000),
check(SetQty=1  Or SetQty=5 Or SetQty=10)
)

--Q2)nsert 20 records in the above Product table

insert into Product values('choclate',10,55.5)
insert into Product values('pizza',10,100.5)
insert into Product values('shoes',5,130.5)
insert into Product values('Crackers',1,1000.5)
insert into Product values('teddy',5,90.5)
insert into Product values('sprite',10,65.5)
insert into Product values('book',5,65.5)
insert into Product values('bootle',5,65.5)
insert into Product values('pen',5,55.5)
insert into Product values('pencil',5,55.5)
insert into Product values('ink',5,55.5)
insert into Product values('charger',1,205.5)
insert into Product values('watch',5,100.5)
insert into Product values('bag',5,100.5)
insert into Product values('t-shirt',5,100.5)
insert into Product values('top',5,99.5)
insert into Product values('sunglasses',1,70.5)
insert into Product values('furniture',1,4000.5)
insert into Product values('cakes',1,500.5)
insert into Product values('cheese',1,100.5)


select * from Product

--Q3) Update all the rates with 10% rate hike.
update Product
set Rate= Rate*1.1
From Product

--Q4) Delete last record by providing the ProductID.
Delete from Product
where ProductID=20

--Q5) Alter the above table and add the following column. 
Alter table Product
add MarginCode char(1)
check (MarginCode='A' OR MarginCode='B' OR MarginCode=NULL)

select * from Product

--Q6)Update few records to set MarginCode to A and some records MarginCode 
 update Product
 set MarginCode= 'A'
 where ProductID<=10

 update Product
 set MarginCode= 'B'
 where ProductID>10

 --Q7)Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1.
 update Product
 set SetQty=10
 where MarginCode='A' AND SetQty=1