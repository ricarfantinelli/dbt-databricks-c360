{{
 config(materialized = 'table', file_format = 'delta')
}}

-- notes: user data cleaned and anonymized for analysis -- 
select 
user_id, 
sum(cast(amount as decimal(25,10))) as amount  
from dbdemos.dbt_c360_bronze_orders 
group by user_id;