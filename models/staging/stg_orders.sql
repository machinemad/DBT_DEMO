    {{
  config(
    materialized='view',
  )
}}

SELECT 
    order_id,
    date as order_date,
    time as order_time
FROM 
    {{ source('pizza_place', 'orders') }}