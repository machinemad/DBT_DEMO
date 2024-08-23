-- macros/create_table_macro.sql
{% macro create_table_from_stage(stage, table_name) %}
    create table {{ table_name }} as
    select * from {{ stage }};
{% endmacro %}