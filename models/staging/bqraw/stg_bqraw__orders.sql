select 
    order_id, 
    user_id,
    order_ts
from 
{{ source('raw', 'orders') }}