============================== 99dbea8f-175e-4a79-a0a8-690b8fe09a72 ==============================

============================== ec956335-cdcc-4ef8-8530-7b3c4a6fb4e3 ==============================

============================== 5272c78c-1567-4ed3-9507-9470b19ff25d ==============================

============================== 8bd124a3-0d08-41fc-9ac8-133b9c992cd9 ==============================

============================== 42ebd0b0-2c31-46c8-b1a0-61ad69538d28 ==============================

============================== 14ea938e-4dbb-46f7-8287-33c3ca52c7c6 ==============================

============================== ecfd6d34-5ffb-4767-abe7-da9c530203e6 ==============================

============================== 217c1519-fd8f-4fda-9809-a23502bbfe63 ==============================

============================== 4cfedf96-0cda-45db-a61a-5714ef6b55ed ==============================
-- created_at: 2026-03-01T00:10:12.386040021+00:00
-- finished_at: 2026-03-01T00:10:14.563038327+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: bigquery
-- node_id: not available
-- query_id: eHT3Pek1h7Dl2154BvNE4iqYDIw
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "user", "target_name": "default"} */

    select distinct schema_name from `dbt-training-488801`.INFORMATION_SCHEMA.SCHEMATA;
  ;
-- created_at: 2026-03-01T00:10:14.563684134+00:00
-- finished_at: 2026-03-01T00:10:15.711985377+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: bigquery
-- node_id: not available
-- query_id: glCMlpNmOms5SdDF1UBkGlzKPrD
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "user", "target_name": "default"} */
create schema if not exists `dbt_vkatsva`;

============================== 6070bf67-4725-4716-82cc-5e2ac0741658 ==============================
-- created_at: 2026-03-01T00:12:43.918459532+00:00
-- finished_at: 2026-03-01T00:12:46.123418213+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: bigquery
-- node_id: not available
-- query_id: 4j25cfJZKxnspOpALv0i1BT7oec
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "user", "target_name": "default"} */

    select distinct schema_name from `dbt-training-488801`.INFORMATION_SCHEMA.SCHEMATA;
  ;
-- created_at: 2026-03-01T00:12:46.132614352+00:00
-- finished_at: 2026-03-01T00:12:47.747293307+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: bigquery
-- node_id: seed.jaffle_shop.raw_customers
-- query_id: YCxJKmQdRNwvlkJvvfIHotOwK2g
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:12:46.134278573+00:00
-- finished_at: 2026-03-01T00:12:48.103755411+00:00
-- elapsed: 2.0s
-- outcome: success
-- dialect: bigquery
-- node_id: seed.jaffle_shop.raw_orders
-- query_id: I9phq0XZq6QipTTId1f7qZ96OmS
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:12:46.135696566+00:00
-- finished_at: 2026-03-01T00:12:48.398061750+00:00
-- elapsed: 2.3s
-- outcome: success
-- dialect: bigquery
-- node_id: seed.jaffle_shop.raw_payments
-- query_id: PHDYjrMQ0VUlW9x0EkJmXusQYVm
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:12:48.104977408+00:00
-- finished_at: 2026-03-01T00:12:50.736148843+00:00
-- elapsed: 2.6s
-- outcome: success
-- dialect: bigquery
-- node_id: seed.jaffle_shop.raw_orders
-- query_id: not available
-- desc: load_dataframe
;
-- created_at: 2026-03-01T00:12:47.748678391+00:00
-- finished_at: 2026-03-01T00:12:52.345458246+00:00
-- elapsed: 4.6s
-- outcome: success
-- dialect: bigquery
-- node_id: seed.jaffle_shop.raw_customers
-- query_id: not available
-- desc: load_dataframe
;
-- created_at: 2026-03-01T00:12:50.737675544+00:00
-- finished_at: 2026-03-01T00:12:53.030664241+00:00
-- elapsed: 2.3s
-- outcome: success
-- dialect: bigquery
-- node_id: seed.jaffle_shop.raw_orders
-- query_id: bqmXjADrkl9V7mQY813hEJnGaf5
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.jaffle_shop.raw_orders", "profile_name": "user", "target_name": "default"} */

    alter table `dbt-training-488801`.`dbt_vkatsva`.`raw_orders` set OPTIONS()
  ;
-- created_at: 2026-03-01T00:12:52.346766934+00:00
-- finished_at: 2026-03-01T00:12:54.602360697+00:00
-- elapsed: 2.3s
-- outcome: success
-- dialect: bigquery
-- node_id: seed.jaffle_shop.raw_customers
-- query_id: BLMSwQtaVNOoZ9VAG9tUnlyRdc8
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.jaffle_shop.raw_customers", "profile_name": "user", "target_name": "default"} */

    alter table `dbt-training-488801`.`dbt_vkatsva`.`raw_customers` set OPTIONS()
  ;
-- created_at: 2026-03-01T00:12:48.399236856+00:00
-- finished_at: 2026-03-01T00:12:59.456622610+00:00
-- elapsed: 11.1s
-- outcome: success
-- dialect: bigquery
-- node_id: seed.jaffle_shop.raw_payments
-- query_id: not available
-- desc: load_dataframe
;
-- created_at: 2026-03-01T00:12:59.457938066+00:00
-- finished_at: 2026-03-01T00:13:01.639289796+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: bigquery
-- node_id: seed.jaffle_shop.raw_payments
-- query_id: wUQMkdpZ2sIgnQR8Ysz9NTxqGyG
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.jaffle_shop.raw_payments", "profile_name": "user", "target_name": "default"} */

    alter table `dbt-training-488801`.`dbt_vkatsva`.`raw_payments` set OPTIONS()
  ;

============================== 79ece05f-bfbc-4b29-9d65-1dd25084b74e ==============================
-- created_at: 2026-03-01T00:13:32.770443958+00:00
-- finished_at: 2026-03-01T00:13:35.207251918+00:00
-- elapsed: 2.4s
-- outcome: success
-- dialect: bigquery
-- node_id: not available
-- query_id: YgFGeEfNSIGrHnW92jq3yiXvA3Q
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "user", "target_name": "default"} */

    select distinct schema_name from `dbt-training-488801`.INFORMATION_SCHEMA.SCHEMATA;
  ;
-- created_at: 2026-03-01T00:13:35.236410288+00:00
-- finished_at: 2026-03-01T00:13:37.703450109+00:00
-- elapsed: 2.5s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_orders
-- query_id: Ljxj8W6R8TeNZrUyUvUXH5uwOoo
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:13:35.237875376+00:00
-- finished_at: 2026-03-01T00:13:37.785926521+00:00
-- elapsed: 2.5s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_customers
-- query_id: C2jDqsmqlATNemg5dRJfZ623D32
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:13:35.235122910+00:00
-- finished_at: 2026-03-01T00:13:37.861866838+00:00
-- elapsed: 2.6s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_payments
-- query_id: c8ioY84N9kLyRQlHg218iZ4PlJm
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:13:37.788436771+00:00
-- finished_at: 2026-03-01T00:13:38.973981474+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_customers
-- query_id: 6DpkGUJmMkVnkJFyM0OoJrbId84
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_customers", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`stg_customers`
  OPTIONS()
  as with source as (
    select * from `dbt-training-488801`.`dbt_vkatsva`.`raw_customers`

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed;

;
-- created_at: 2026-03-01T00:13:37.706450348+00:00
-- finished_at: 2026-03-01T00:13:39.080144155+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_orders
-- query_id: hJ8vAgfTLyK1z9P0GvoIob3IJBB
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_orders", "profile_name": "user", "target_name": "default"} */


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

;
-- created_at: 2026-03-01T00:13:37.864221998+00:00
-- finished_at: 2026-03-01T00:13:39.279376094+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_payments
-- query_id: k3IFe5GN0HumfotgGLdnz2zwe6Z
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_payments", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`stg_payments`
  OPTIONS()
  as with source as (
    select * from `dbt-training-488801`.`dbt_vkatsva`.`raw_payments`

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,

        -- `amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount

    from source

)

select * from renamed;

;
-- created_at: 2026-03-01T00:13:39.283571027+00:00
-- finished_at: 2026-03-01T00:13:40.705091196+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.customers
-- query_id: uX8KivKxMwMXPnaxJGf85kN9QMv
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.customers", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`customers`
  OPTIONS()
  as with customers as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_customers`

),

orders as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_orders`

),

payments as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_payments`

),

customer_orders as (

        select
        customer_id,

        min(order_date) as first_order,
        max(order_date) as most_recent_order,
        count(order_id) as number_of_orders
    from orders

    group by customer_id

),

customer_payments as (

    select
        orders.customer_id,
        sum(amount) as total_amount

    from payments

    left join orders on
         payments.order_id = orders.order_id

    group by orders.customer_id

),

final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.first_order,
        customer_orders.most_recent_order,
        customer_orders.number_of_orders,
        customer_payments.total_amount as customer_lifetime_value

    from customers

    left join customer_orders
        on customers.customer_id = customer_orders.customer_id

    left join customer_payments
        on  customers.customer_id = customer_payments.customer_id

)

select * from final;

;
-- created_at: 2026-03-01T00:13:39.285164784+00:00
-- finished_at: 2026-03-01T00:13:40.799791898+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.orders
-- query_id: 2TAMJyHD4iwASDFgKhJMUgtoLnY
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.orders", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`orders`
  OPTIONS()
  as 

with orders as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_orders`

),

payments as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_payments`

),

order_payments as (

    select
        order_id,

        sum(case when payment_method = 'credit_card' then amount else 0 end) as credit_card_amount,
        sum(case when payment_method = 'coupon' then amount else 0 end) as coupon_amount,
        sum(case when payment_method = 'bank_transfer' then amount else 0 end) as bank_transfer_amount,
        sum(case when payment_method = 'gift_card' then amount else 0 end) as gift_card_amount,
        sum(amount) as total_amount

    from payments

    group by order_id

),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        orders.status,

        order_payments.credit_card_amount,

        order_payments.coupon_amount,

        order_payments.bank_transfer_amount,

        order_payments.gift_card_amount,

        order_payments.total_amount as amount

    from orders


    left join order_payments
        on orders.order_id = order_payments.order_id

)

select * from final;

;

============================== 987c9fd9-dc60-4f80-a915-dbaaa1d00cca ==============================
-- created_at: 2026-03-01T00:20:08.486876536+00:00
-- finished_at: 2026-03-01T00:20:11.497456605+00:00
-- elapsed: 3.0s
-- outcome: success
-- dialect: bigquery
-- node_id: not available
-- query_id: fWiIUpWA0QpCXxYzkdXFJdtrJBP
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "user", "target_name": "default"} */

    select distinct schema_name from `dbt-training-488801`.INFORMATION_SCHEMA.SCHEMATA;
  ;
-- created_at: 2026-03-01T00:20:11.529664717+00:00
-- finished_at: 2026-03-01T00:20:14.010589416+00:00
-- elapsed: 2.5s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_payments
-- query_id: oWUpvFon8PXkb5MEuOvXr1GVoJ1
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:20:11.528045796+00:00
-- finished_at: 2026-03-01T00:20:14.098072623+00:00
-- elapsed: 2.6s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_orders
-- query_id: GdBa9eR3XEyjrfOmK0WAilxe1ht
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:20:11.526648352+00:00
-- finished_at: 2026-03-01T00:20:14.411248038+00:00
-- elapsed: 2.9s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_customers
-- query_id: Z3E8kXSwtuGFShGbD9fvoniXj6g
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:20:14.013623641+00:00
-- finished_at: 2026-03-01T00:20:15.286869554+00:00
-- elapsed: 1.3s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_payments
-- query_id: e4k6LZMivERL661Cb1zjQerJR96
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_payments", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`stg_payments`
  OPTIONS()
  as with source as (
    select * from `dbt-training-488801`.`dbt_vkatsva`.`raw_payments`

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,

        -- `amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount

    from source

)

select * from renamed;

;
-- created_at: 2026-03-01T00:20:14.100446209+00:00
-- finished_at: 2026-03-01T00:20:15.379451928+00:00
-- elapsed: 1.3s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_orders
-- query_id: uSbQ1oiK3coxI8eDNCtjIVGszoA
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_orders", "profile_name": "user", "target_name": "default"} */


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

;
-- created_at: 2026-03-01T00:20:14.413641421+00:00
-- finished_at: 2026-03-01T00:20:15.981358410+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.stg_customers
-- query_id: mhe3HqJjAuaZZBBEv1vuhjSKPnn
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_customers", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`stg_customers`
  OPTIONS()
  as with source as (
    select * from `dbt-training-488801`.`dbt_vkatsva`.`raw_customers`

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed;

;
-- created_at: 2026-03-01T00:20:15.385568964+00:00
-- finished_at: 2026-03-01T00:20:16.999535458+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.orders
-- query_id: cI1oUY5ov2dKmXZ8zRVuU9HR1SE
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.orders", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`orders`
  OPTIONS()
  as 

with orders as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_orders`

),

payments as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_payments`

),

order_payments as (

    select
        order_id,

        sum(case when payment_method = 'credit_card' then amount else 0 end) as credit_card_amount,
        sum(case when payment_method = 'coupon' then amount else 0 end) as coupon_amount,
        sum(case when payment_method = 'bank_transfer' then amount else 0 end) as bank_transfer_amount,
        sum(case when payment_method = 'gift_card' then amount else 0 end) as gift_card_amount,
        sum(amount) as total_amount

    from payments

    group by order_id

),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        orders.status,

        order_payments.credit_card_amount,

        order_payments.coupon_amount,

        order_payments.bank_transfer_amount,

        order_payments.gift_card_amount,

        order_payments.total_amount as amount

    from orders


    left join order_payments
        on orders.order_id = order_payments.order_id

)

select * from final;

;
-- created_at: 2026-03-01T00:20:15.985474098+00:00
-- finished_at: 2026-03-01T00:20:17.435693772+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: bigquery
-- node_id: model.jaffle_shop.customers
-- query_id: riKTsyPQTyymVgO6eoBIOFdo0ma
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.customers", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`customers`
  OPTIONS()
  as with customers as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_customers`

),

orders as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_orders`

),

payments as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_payments`

),

customer_orders as (

        select
        customer_id,

        min(order_date) as first_order,
        max(order_date) as most_recent_order,
        count(order_id) as number_of_orders
    from orders

    group by customer_id

),

customer_payments as (

    select
        orders.customer_id,
        sum(amount) as total_amount

    from payments

    left join orders on
         payments.order_id = orders.order_id

    group by orders.customer_id

),

final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.first_order,
        customer_orders.most_recent_order,
        customer_orders.number_of_orders,
        customer_payments.total_amount as customer_lifetime_value

    from customers

    left join customer_orders
        on customers.customer_id = customer_orders.customer_id

    left join customer_payments
        on  customers.customer_id = customer_payments.customer_id

)

select * from final;

;

============================== 541a139a-ab58-40f8-a539-df0f72f546da ==============================
-- created_at: 2026-03-01T00:26:17.545287721+00:00
-- finished_at: 2026-03-01T00:26:20.506040376+00:00
-- elapsed: 3.0s
-- outcome: success
-- dialect: bigquery
-- node_id: not available
-- query_id: rLfROKADRvf2xoGfRlv414hRapz
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "user", "target_name": "default"} */

    select distinct schema_name from `dbt-training-488801`.INFORMATION_SCHEMA.SCHEMATA;
  ;
-- created_at: 2026-03-01T00:26:20.533850441+00:00
-- finished_at: 2026-03-01T00:26:22.929397721+00:00
-- elapsed: 2.4s
-- outcome: success
-- dialect: bigquery
-- node_id: model.my_new_project.stg_orders
-- query_id: sCPn9lKuIopQhkn4zvYWPWvkHNn
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:26:20.535213539+00:00
-- finished_at: 2026-03-01T00:26:23.109440788+00:00
-- elapsed: 2.6s
-- outcome: success
-- dialect: bigquery
-- node_id: model.my_new_project.stg_customers
-- query_id: eFuFSVNa4vbAvEuRGfl070zxp7U
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:26:20.536727590+00:00
-- finished_at: 2026-03-01T00:26:23.145754544+00:00
-- elapsed: 2.6s
-- outcome: success
-- dialect: bigquery
-- node_id: model.my_new_project.stg_payments
-- query_id: qtDhy0RHeoUblm8RKRPQcNNbyPl
-- desc: get_relation > list_relations call
SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM 
    `dbt-training-488801`.`dbt_vkatsva`.INFORMATION_SCHEMA.TABLES;
-- created_at: 2026-03-01T00:26:23.111759394+00:00
-- finished_at: 2026-03-01T00:26:24.477195578+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: bigquery
-- node_id: model.my_new_project.stg_customers
-- query_id: FbodMrGhh6A1szFxlnI6DA313SR
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_new_project.stg_customers", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`stg_customers`
  OPTIONS()
  as with source as (
    select * from `dbt-training-488801`.`dbt_vkatsva`.`raw_customers`

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed;

;
-- created_at: 2026-03-01T00:26:22.932207301+00:00
-- finished_at: 2026-03-01T00:26:24.483946323+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: bigquery
-- node_id: model.my_new_project.stg_orders
-- query_id: lUwmiLeyNLujTmbKXbrPYunNwyl
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_new_project.stg_orders", "profile_name": "user", "target_name": "default"} */


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

;
-- created_at: 2026-03-01T00:26:23.147951042+00:00
-- finished_at: 2026-03-01T00:26:24.801064112+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: bigquery
-- node_id: model.my_new_project.stg_payments
-- query_id: NfnlbycHfPDflB0Mf9BTknlYUv7
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_new_project.stg_payments", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`stg_payments`
  OPTIONS()
  as with source as (
    select * from `dbt-training-488801`.`dbt_vkatsva`.`raw_payments`

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,

        -- `amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount

    from source

)

select * from renamed;

;
-- created_at: 2026-03-01T00:26:24.806880702+00:00
-- finished_at: 2026-03-01T00:26:26.318352186+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: bigquery
-- node_id: model.my_new_project.customers
-- query_id: FZMxpSxDJ04Adt5hM36DZ2aMtVi
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_new_project.customers", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`customers`
  OPTIONS()
  as with customers as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_customers`

),

orders as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_orders`

),

payments as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_payments`

),

customer_orders as (

        select
        customer_id,

        min(order_date) as first_order,
        max(order_date) as most_recent_order,
        count(order_id) as number_of_orders
    from orders

    group by customer_id

),

customer_payments as (

    select
        orders.customer_id,
        sum(amount) as total_amount

    from payments

    left join orders on
         payments.order_id = orders.order_id

    group by orders.customer_id

),

final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.first_order,
        customer_orders.most_recent_order,
        customer_orders.number_of_orders,
        customer_payments.total_amount as customer_lifetime_value

    from customers

    left join customer_orders
        on customers.customer_id = customer_orders.customer_id

    left join customer_payments
        on  customers.customer_id = customer_payments.customer_id

)

select * from final;

;
-- created_at: 2026-03-01T00:26:24.806153288+00:00
-- finished_at: 2026-03-01T00:26:26.420752819+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: bigquery
-- node_id: model.my_new_project.orders
-- query_id: WIJiGt7X1p6pckMbO7tnJiDVt3f
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_new_project.orders", "profile_name": "user", "target_name": "default"} */


  create or replace view `dbt-training-488801`.`dbt_vkatsva`.`orders`
  OPTIONS()
  as 

with orders as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_orders`

),

payments as (

    select * from `dbt-training-488801`.`dbt_vkatsva`.`stg_payments`

),

order_payments as (

    select
        order_id,

        sum(case when payment_method = 'credit_card' then amount else 0 end) as credit_card_amount,
        sum(case when payment_method = 'coupon' then amount else 0 end) as coupon_amount,
        sum(case when payment_method = 'bank_transfer' then amount else 0 end) as bank_transfer_amount,
        sum(case when payment_method = 'gift_card' then amount else 0 end) as gift_card_amount,
        sum(amount) as total_amount

    from payments

    group by order_id

),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        orders.status,

        order_payments.credit_card_amount,

        order_payments.coupon_amount,

        order_payments.bank_transfer_amount,

        order_payments.gift_card_amount,

        order_payments.total_amount as amount

    from orders


    left join order_payments
        on orders.order_id = order_payments.order_id

)

select * from final;

;

