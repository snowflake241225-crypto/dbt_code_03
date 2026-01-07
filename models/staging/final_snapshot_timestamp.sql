{{ config(materialized='table') }}

WITH tb1  as (
 select
       *
     from {{ ref ('snap_customers_timestamp') }})
     select * from tb1
     where dbt_valid_to is null
