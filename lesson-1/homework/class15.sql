create database class15
use class15;
with cte as
(
select *,row_number() over (partition by department order by salary desc) as rn FROM [class13].[dbo].[emp]
)
select * from cte
where rn = 1
--rank-->dense ranka oxshab bir xil valuelara bir xil son baradi, ln bir tashab getadi kn

select *,dense_rank() over (order by salary asc) from [class13].[dbo].[emp]

select *, rank() over (partition by department order by salary desc) from [class13].[dbo].[emp]

select *, lead(salary,2,100) over (partition by department order by salary desc) from [class13].[dbo].[emp]

select *, sum(salary) over (partition by department order by id) from [class13].[dbo].[emp]

select *,sum(salary) over() from [class13].[dbo].[emp]

--rows between unbounded preceding and unbounded following(current rows)-->cheksiz orqaga va cheksiz oldinga
select *,sum(salary) over (order by id rows between unbounded preceding and unbounded following) from [class13].[dbo].[emp]

select *, sum(salary) over (order by id rows between unbounded preceding and current row) from [class13].[dbo].[emp]

--first value and last value
select *,FIRST_VALUE(salary) over (order by id desc) from [class13].[dbo].[emp]

select *, last_value(salary) over (order by id desc) from [class13].[dbo].[emp] --> by default bo'lib galib durbdi














































































