with 
source as (
    select * from {{ source('hive_metastore', 'airbnb') }}
),
stg_airbnb as (
select
    `Host Id` as host_id,
    `Host Since` as host_since,
    `Name` as name,
    `Neighbourhood ` as neighbourhood,
    `Property Type` as property_type,
    `Review Scores Rating (bin)` as review_scores_rating_bin,
    `Room Type` as room_type,
    `Zipcode` as zipcode,
    `Beds` as beds,
    `Number of Records` as number_of_records,
    `Number Of Reviews` as number_of_reviews,
    `Price` as price,
    `Review Scores Rating` as review_scores_rating
from source
where `Host Id` is not null
)

select * from stg_airbnb
