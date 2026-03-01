with source as (
    select * from `dbt-training-488801`.`dbt_vkatsva`.`raw_customers`

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed