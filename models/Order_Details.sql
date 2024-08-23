-- models/create_order_details_table.sql
{{ config(materialized='table') }}

{{ create_table_from_stage('@"DBT_PP_DB"."PIZZA_PLACE"."RAW_CSVS"/order_details.csv', 'order_details') }}
