with silver_airbnb as (

    select *
    from {{ ref('stg_hive_metastore__airbnb') }}

)

select * from silver_airbnb



