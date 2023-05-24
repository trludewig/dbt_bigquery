select 
    product_id,
    name, 
    description,
    cost
    from 
    {{ source('raw', 'products')}}