select
    *,
    source_file_mod_time as ingested_at
from {{ source('hive_metastore', 'encounters_bronze') }}
