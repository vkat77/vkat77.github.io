

  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`stg_orders`
  OPTIONS()
  as with source as (
    select * from `dbt-training-488801`.`dbt_vkatsva`.`raw_orders`

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from renamed;

