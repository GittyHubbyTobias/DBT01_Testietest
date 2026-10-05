select 
    host_id,
     {{ dbt_utils.generate_surrogate_key(['host_id', 'name']) }} as listing_id,
    name,
    neighbourhood,
    property_type,
    room_type,
    zipcode,
    beds
from {{ ref('airbnb_cleaned')}}


