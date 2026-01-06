{{ config(materialized="incremental",
        unique_key="id",
         incremental_strategy="delete+insert",
         
) }}

select * from {{source('datafeed_shared_schema','stg_orders_data')}} where id in (7,8,9,3,5) 
