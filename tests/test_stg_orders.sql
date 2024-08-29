{{
  config(
    tags=["data-quality"]
  )
}}

SELECT 
    order_id,
    date,
    time
FROM 
    {{ ref('stg_orders') }}
WHERE 
    order_id IS NULL OR date IS NULL OR time IS NULL