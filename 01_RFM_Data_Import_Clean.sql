-- Create Tables
DROP TABLE IF EXISTS retail_2009_2010;
DROP TABLE IF EXISTS retail_2010_2011;

create table retail_2009_2010(
	invoice varchar(20),
	stock_code varchar(20),
	description text,
	quantity integer,
	invoice_date text,
	price numeric(10,2),
	customer_id integer,
	country varchar(100)
);

create table retail_2010_2011(
	invoice varchar(20),
	stock_code varchar(20),
	description text,
	quantity integer,
	invoice_date text,
	price numeric(10,2),
	customer_id integer,
	country varchar(100)
);

-- Verify Both Tables
select table_name,column_name,data_type
from information_schema.columns
where table_name in('retail_2010_2011','retail_2010_2011')
order by table_name,ordinal_position;

-- Verify the records
select count(*) as total_records
from retail_2009_2010;

select count(*) as total_records
from retail_2010_2011;

SELECT * FROM retail_2009_2010 LIMIT 5;

SELECT * FROM retail_2010_2011 LIMIT 5;

-- Check total rows count
select count(*) as total_rows_count from retail_2009_2010;
select count(*) as total_rows_count from retail_2010_2011;

-- Checking particular dataset
select
	(select count(*) from retail_2009_2010)
		as records_2009_2010,
	(select count(*) from retail_2010_2011)
		as records_2010_2011;

-- Check Column Names and DataTypes
select table_name,column_name,data_type
from information_schema.columns
where table_schema='public'
and table_name in('retail_2009_2010','retail_2010_2011')
order by table_name,ordinal_position;

-- Check Missing Customer Id
select '2009-2010' as dataset,
count(*) as missing_cust_id from retail_2009_2010
where customer_id is null

union all

select '2010-2011',
count(*) from retail_2010_2011 
where customer_id is null;

-- Check negative & zero Qty
select '2009-2010' as dataset,
count(*) filter(where quantity<0) as negative_qty,
count(*) filter(where quantity=0) as zero_qty
from retail_2009_2010

union all

select '2010-2011',
count(*) filter (where quantity <0),
count(*) filter (where quantity =0)
from retail_2010_2011;

-- Check Missing Description
select '2009-2010' as dataset,
count(*) as missing_descriptions from retail_2009_2010
where description is null or trim(description)=''

union all
select '2010-2011',
count(*) from retail_2010_2011 where description is null or trim(description)='';

-- Identify Exact duplicate Transcations
SELECT
    invoice,
    stock_code,
    description,
    quantity,
    invoice_date,
    price,
    customer_id,
    country,
    COUNT(*) AS duplicate_count
FROM (
    SELECT * FROM retail_2009_2010

    UNION ALL

    SELECT * FROM retail_2010_2011
) AS combined_retail
GROUP BY
    invoice,
    stock_code,
    description,
    quantity,
    invoice_date,
    price,
    customer_id,
    country
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;

-- Combine both dataset and remove duplicate values
DROP TABLE IF EXISTS retail_combined;

CREATE TABLE retail_combined AS
SELECT DISTINCT
    invoice,
    stock_code,
    description,
    quantity,
    invoice_date,
    price,
    customer_id,
    country
FROM (
    SELECT * FROM retail_2009_2010

    UNION ALL

    SELECT * FROM retail_2010_2011
) AS combined_retail;

-- Check Combine





















