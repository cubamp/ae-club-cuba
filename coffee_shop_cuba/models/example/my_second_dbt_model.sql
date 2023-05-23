
-- Use the `ref` function to select from other models

select 
    month(created_at) as first_order_month
    , sum(n_orders) as order_total
    , count(customer_id) as customers
from {{ ref('my_first_dbt_model') }}
group by 1
