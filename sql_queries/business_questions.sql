select * from wallmart_sales;

select distinct payment_method from wallmart_sales;

select payment_method , count(*) from wallmart_sales group by payment_method;

select count(distinct branch) from wallmart_sales;

select min(quantity) from wallmart_sales;

-- buiseness problems 
-- q1 find the diff payment method and number of transaction, number of quantity sold

select payment_method , count(*) as no_of_transaction ,sum(quantity) as quantity_sold from wallmart_sales group by payment_method;

-- q2 identify the highest rated category in each branch , displaying the branch , category , avg rating

select branch , max(rating) as highest_rating , category , avg(rating) as average_rating ,
rank() over(partition by branch order by avg(rating) desc) as `rank`
from wallmart_sales group by branch , category
order by branch;

with highest_rating as 
(
select branch , max(rating) as highest_rating , category , avg(rating) as average_rating , 
rank() over(partition by branch order by avg(rating) desc) as `rank`
from wallmart_sales group by branch , category 
order by branch
)
select * from highest_rating where `rank` = 1;




-- q3 identify busiest day for each branch based on number of transaction 


select * from 
(
select branch , 
DAYNAME(STR_TO_DATE(`date`, '%d/%m/%y')) as day_name,
count(*) as no_of_transaction,
rank() over(partition by branch order by count(*) desc) as `rank`
from wallmart_sales group by 1,2
) as sub
where `rank` = 1;

with busiest_day as
(
select branch , `date` , count(payment_method) ,
rank() over(partition by branch order by count(payment_method) desc)as `rank` 
from wallmart_sales group by branch , `date` order by branch
)
select * from busiest_day where `rank` = 1;

select branch , `date` ,count(payment_method) from wallmart_sales group by branch,`date` order by branch;



-- q4 calcuate the total quantity of items sold per payment method.list payment method and total quantity

select payment_method , count(quantity) as quantity_sold from wallmart_sales group by payment_method;


--  q5 determine the minimum , maximum , average rating of product for each city

select city , category ,min(rating) as min_rating , max(rating) as max_rating , avg(rating) as avg_rating from wallmart_sales group by city,category;


-- q6 calculate totalprofit for each category by considering total_profit as (unit price * quantity * profit margin) list category , total profit
-- ordered from highest to lowest 

select category ,sum(total * profit_margin) as total_profit from wallmart_sales group by category order by total_profit desc; 

-- q7 determine most common payment method for each branch 



-- q8 categorize sales into morning , afternoon , evening find out each of the shift and number of invoices

alter table wallmart_sales modify column `time` time;

select count(invoice_id) , 
case 
when `time` between '00:00:00' and '11:59:59' then 'morning'
when `time` between '12:00:00' and '17:59:59' then 'afternoon'
else 'evening'
end as shift
from wallmart_sales
group by shift;


-- q9 identify 5 branch with highst descrease ratio in revenuecompare tolast year 2023-2022

with abc as
(
select branch , year(`date`) as `year`,sum(total) as total_revenue from wallmart_sales group by branch,`year` order by branch
),
def as
(
select branch , sum(case when `year` = 2023 then total_revenue else 0 end) as revenue_2023,
sum(case when `year` = 2022 then total_revenue else 0 end) as revenue_2022 from abc group by branch
),
ratio as 
(
select branch , ((revenue_2023 - revenue_2022)/revenue_2022) as decrease_ratio from def group by branch order by decrease_ratio asc limit 5
)
select * from ratio;


select distinct year(`date`) from wallmart_sales;

UPDATE wallmart_sales t1
INNER JOIN wallmart_sales1 t2 ON t1.invoice_id = t2.invoice_id
SET t1.`date` = t2.`date`;

UPDATE wallmart_sales t1
INNER JOIN wallmart_sales1 t2 ON t1.invoice_id = t2.invoice_id
SET t1.`date` = STR_TO_DATE(t2.`date`, '%d/%m/%y');




