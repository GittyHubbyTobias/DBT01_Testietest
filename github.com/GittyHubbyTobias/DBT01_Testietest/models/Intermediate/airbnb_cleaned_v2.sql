with silver_airbnb as (

    select 
        host_id,
        host_since,
        price,
        number_of_reviews,
        number_of_records,
        review_scores_rating,
        review_scores_rating_bin,
        name,
        neighbourhood,
        property_type,
        room_type,
        zipcode,
        beds
    from {{ ref('stg_hive_metastore__airbnb') }}

)

select * from silver_airbnb






