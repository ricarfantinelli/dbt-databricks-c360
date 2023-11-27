{{
 config(materialized = 'table', file_format = 'delta')
}}

-- notes: user data cleaned and anonymized for analysis -- 
Select platform,
count(event_id) as total_events from dbdemos.dbt_c360_bronze_events
group by platform;