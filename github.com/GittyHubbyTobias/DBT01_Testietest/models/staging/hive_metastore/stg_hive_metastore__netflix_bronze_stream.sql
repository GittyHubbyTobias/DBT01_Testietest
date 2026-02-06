with 

source as (

    select * from {{ source('hive_metastore', 'netflix_bronze_stream') }}

),

renamed as (

    select
        title_id,
        title_type,
        primary_title,
        original_title,
        is_adult,
        start_year,
        end_year,
        runtime_minutes,
        genres,
        _ingest_ts

    from source

)

select * from renamed