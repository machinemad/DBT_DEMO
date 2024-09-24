{{
  config(
    materialized='table',
  )
}}

/* WITH daily_customers AS (
  SELECT 
      date,
      COUNT(DISTINCT order_id) AS num_customers
  FROM 
      {{ ref('cur_orders') }}
  GROUP BY 
      date
)
SELECT 
    date,
    num_customers
FROM 
    daily_customers */