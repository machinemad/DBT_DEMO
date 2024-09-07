    {{
  config(
    materialized='view',
  )
}}

SELECT 
    pizza_type_id,
    name as Pizza_name,
    category as pizza_category
FROM 
    {{ source('pizza_place', 'pizza_types') }}