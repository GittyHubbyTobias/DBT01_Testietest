with silver_netflix_cleansed as (

    select 
     title_id,
     original_title,
     is_adult,
     row_number() over (
        partition by title_id
        order by original_title
     ) as rn

    from {{ ref('stg_hive_metastore__netflix_bronze_stream_cdf') }}
    where start_year > 2000 And title_id is not null
)

select
    title_id,
    original_title,
    is_adult
from silver_netflix_cleansed
where rn = 1






