select 
    id, 
    first_name, 
    last_name, 
    phone, 
    city, 
    state, 
    created_ts
from 
{{ source('raw', 'customers') }}