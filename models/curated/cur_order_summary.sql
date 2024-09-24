{{
  config(
    materialized='table',
  )
}}

WITH orders AS (
  SELECT 
  *
  FROM 
      {{ ref('stg_orders') }}
),
order_details AS (
  SELECT
  *
  FROM 
      {{ ref('stg_order_details') }}
)
SELECT 
    orders.order_id,
    orders.date,
    orders.time,
    order_details.pizza_id,
    order_details.quantity
FROM 
    orders
JOIN 
    order_details ON orders.order_id = order_details.order_id