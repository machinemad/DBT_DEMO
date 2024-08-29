    {{
  config(
    materialized='table',
    alias='stg_orders'
  )
}}

SELECT 
    order_id,
    date,
    time
FROM 
    {{ source('pizza_place', 'orders') }}