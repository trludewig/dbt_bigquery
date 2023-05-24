select 
    order_id,
    product_id,
    num_items
    from 
    {{ source('raw', 'order_products')}}