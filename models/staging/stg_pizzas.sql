    {{
  config(
    materialized='view',
  )
}}

SELECT 
    pizza_id,
    pizza_type_id,
    size as pizza_size,
    price as pizza_price

FROM 
    {{ source('pizza_place', 'pizzas') }}