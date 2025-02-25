create database class7
create table tbl2(numbers int)
insert into tbl2 values(6),(7),(8),(4),(5)

select * from tbl1

select * from tbl2
/*
inner join(join)
left join(outer)
right join(outer)
full outer join (full join)
cross join
self join
*/

select * from tbl1
left join tbl2
on tbl1.numbers > tbl2.numbers

select * from tbl1
right join tbl2
on tbl1.numbers > tbl2.numbers


select * from tbl1
inner join tbl2
on tbl1.numbers <> tbl2.numbers
order by tbl1.numbers,tbl2.numbers

select * from tbl1
left join tbl2
on tbl1.numbers < tbl2.numbers

select * from tbl2
left join tbl1 
on tbl1.numbers = tbl2.numbers
where tbl1.numbers is null

select * from tbl1
full join tbl2
on tbl1.numbers <> tbl2.numbers

select * from tbl1
cross join tbl2

select * from tbl1 as A
inner join tbl1 as B
on A.numbers > B.numbers

create table family(id int, name varchar(10), parent_id int)
insert into family values (1,'John',null),(2,'Ann',1),(3,'Bob',1),(4,'Sara',3),(5,'Richard',2),(6,'herry',4)

select a.id,a.name as childname ,b.name as parentname from family as A
left join family as B
on a.parent_id = b.id

select * from family
-



























