{{
  config(
    materialized='table',
  )
}}

SELECT 
    order_details_id,
    order_id,
    pizza_id,
    quantity
FROM 
    {{ source('pizza_place', 'order_details') }}