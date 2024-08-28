-- models/staging/stg_orders.sql
{{ config(
    materialized='view'
) }}

SELECT
    order_id,
    date AS order_date,
    time AS order_time
FROM
    DBT_PP_DB.PIZZA_PLACE.ORDERS
