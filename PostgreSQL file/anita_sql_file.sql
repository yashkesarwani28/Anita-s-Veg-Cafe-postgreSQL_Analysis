select * from sales;
select * from menu;
select * from members;

-- 1. What is the total amount each customer has spent at the café?
select distinct(customer_id),sum(price)
over(partition by customer_id)AS Spending 
from sales s 
join menu m 
using (product_id)

-- 2. How many distinct days has each customer placed an order?
select customer_id,count(distinct(order_date)) as days_of_ord 
from sales
group by customer_id;

--3. What was the first dish ordered by each customer? 
select customer_id,product_name
from( 
select s.customer_id ,m.product_name,dense_rank()
over(partition by s.customer_id order by s.order_date) as first_order
from sales s 
join menu m 
using (product_id)) as ch
where first_order =1

--4. Which menu item is the most popular overall? 
select s.product_id,m.product_name,count(s.product_id) as most_orderd from sales s 
join menu m on m.product_id=s.product_id
group by s.product_id,m.product_name
order by most_orderd desc
limit 1 

--5. What is the most frequently ordered dish for each customer?
select customer_id,product_name,ord_c 
from(
select s.customer_id,m.product_name,
count(*) as ord_c,rank()
over(partition by customer_id order by count(*) desc) as rnk 
from sales s join menu m 
on s.product_id=m.product_id
group by s.customer_id,m.product_name
) 
where rnk=1

--6. After joining the loyalty program, what dish did each member first order? 
with order_after_join as(
select mb.customer_id,s.order_date,mb.join_date,m.product_name
from sales s 
join menu m
on s.product_id=m.product_id
join members mb
on s.customer_id=mb.customer_id
where order_date>=join_date 
order by order_date) ,

ord_aft_join as (
select *,dense_rank()
over(partition by customer_id order by order_date)
as fst_ord_aft_join 
from order_after_join)

select * from ord_aft_join
where fst_ord_aft_join= 1;

--7. Before joining the loyalty program, what dish did each customer order last?
with order_before_join as(
select mb.customer_id,s.order_date,mb.join_date,m.product_name,m.product_id
from sales s 
join menu m
on s.product_id=m.product_id
join members mb 
on s.customer_id=mb.customer_id
where order_date<join_date 
order by order_date ) ,

order_ranking as (
select *,rank() 
over(partition by customer_id order by order_date desc)
as lst_ord_bf_join
from order_before_join
)

select * from order_ranking
where lst_ord_bf_join=1

--8. For each member, how many items and how much did they spend before joining? 
with tbl_bf_joining as(
select mb.customer_id,s.order_date,mb.join_date,m.product_name,m.price 
from sales s 
join menu m 
on s.product_id=m.product_id
join members mb
on s.customer_id=mb.customer_id
where order_date<join_date 
order by order_date ) 

select DISTINCT(customer_id),count(product_name) 
over (partition by customer_id ) as Total_no_of_ord,
sum(price) over (partition by customer_id ) as T_SPENDING 
from tbl_bf_joining

--9. If each ₹1 = 10 points, and Paneer Butter Masala earns double points, 
-- How many points does each customer earn? 

select s.customer_id,sum(
case
when s.product_id=1 then price*10*2
else 
price*10
end) as points
from sales s join menu m 
on s.product_id=m.product_id
group by s.customer_id

--10. In their first loyalty week (starting from join_date), members earn double points on 
-- all items. How many points do Aarav and Meera have by the end of January?
select s.customer_id,mb.join_date,sum(
case 
when order_date  between join_date AND (join_date+interval '6 days') then (price*10*2) 
else
(price*10)
end) as points
from sales s join menu m on s.product_id=m.product_id
join members mb on s.customer_id=mb.customer_id
WHERE s.order_date <= '2021-01-31'
group by s.customer_id,mb.join_date

--11. Which customers have NOT ordered in the last 30 days? (Churn Risk Detection)
SELECT DISTINCT s.customer_id,
  MAX(s.order_date)                          AS last_order_date,
  CURRENT_DATE - MAX(s.order_date)           AS days_since_last_order
FROM sales s
GROUP BY s.customer_id
HAVING MAX(s.order_date) < CURRENT_DATE - INTERVAL '30 days'
ORDER BY days_since_last_order DESC;

