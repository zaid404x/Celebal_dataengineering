CREATE DATABASE superstore_db;
USE superstore_db;

select *
from `sample-superstore`
limit 10;

rename table `sample-superstore`
to superstore_raw;

show tables;

rename table `sample - superstore`
to superstore_raw;
-- we used backticks because the imported table name `sample - superstore`
-- contained spaces and special characters, which is not a clean sql naming convention
-- therefore we renamed the table to superstore_raw for easier querying
select *
from superstore_raw limit 10;

describe superstore_raw;

-- creating customers table

create table customers as
select distinct
    `Customer ID` as customer_id,
    `Customer Name` as customer_name,segment,country,city,state,
    `Postal Code` as postal_code,region
from superstore_raw;

-- creating a products table

create table products as
select distinct
    `Product ID` as product_id,category,
    `Sub-Category` as sub_category,
    `Product Name` as product_name
from superstore_raw;

-- creating ann orders table

create table orders as
select distinct
    `Row ID` as row_id,
    `Order ID` as order_id,
    `Order Date` as order_date,
    `Ship Date` as ship_date,
    `Ship Mode` as ship_mode,
    `Customer ID` as customer_id,
    `Product ID` as product_id,sales,quantity,discount,profit
from superstore_raw;

show tables;

select * from customers limit 10;

select * from products
limit 10;

select * from orders limit 10;

-- find orders where sales are greater than average sales

select * from orders where sales > (select avg(sales) from orders);

-- highest sales order for each customer

select customer_id, max(sales) as highest_sales from orders
group by customer_id
order by highest_sales desc;


-- total sales for each customer using cte

with customer_sales as (select customer_id,sum(sales) as total_sales from orders group by customer_id)
select * from customer_sales
order by total_sales desc;


-- top 3 customers based on total sales

with customer_sales as (
    select
        customer_id,
        sum(sales) as total_sales
    from orders
    group by customer_id
),

ranked_customers as (select customer_id,total_sales,rank() over (order by total_sales desc) as sales_rank from customer_sales)

select * from ranked_customers
where sales_rank <= 3;


-- customer name, total sales and rank

select c.customer_name,sum(o.sales) as total_sales,
rank() over (order by sum(o.sales) desc) as customer_rank
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_name;

select customer_id,sum(sales) as total_sales
from orders
group by customer_id
order by total_sales desc
limit 5;

select customer_id,sum(sales) as total_sales
from orders
group by customer_id
order by total_sales asc
limit 5;

-- highest order value per customer

select customer_id,max(sales) as highest_order_value
from orders
group by customer_id
order by highest_order_value desc;