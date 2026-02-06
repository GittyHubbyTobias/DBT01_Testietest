with 

source as (

    select * from {{ source('hive_metastore', 'encounters_bronze') }}

),

renamed as (

    select
        id,
        start,
        stop,
        patient,
        organization,
        payer,
        encounterclass,
        code,
        description,
        base_encounter_cost,
        total_claim_cost,
        payer_coverage,
        reasoncode,
        reasondescription,
        _rescued_data,
        source_file_name,
        source_file_mod_time

    from source

)

select * from renamed