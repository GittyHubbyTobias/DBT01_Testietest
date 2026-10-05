select 
     {{ dbt_utils.generate_surrogate_key(['host_id', 'name']) }} as listing_id,
    -- load_date,
    price,
    number_of_reviews,
    number_of_records,
    review_scores_rating,
    review_scores_rating_bin
from {{ ref('airbnb_cleaned')}}
