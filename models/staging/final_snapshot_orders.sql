{{ config(materialized='table') }}

WITH tb1  as (
 select
       *
     from {{ ref ('snap_orders_checks') }})
     select * from tb1
     where dbt_valid_to is null
