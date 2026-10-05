select 
    host_id,
    host_since
from {{ ref('airbnb_cleaned')}}




