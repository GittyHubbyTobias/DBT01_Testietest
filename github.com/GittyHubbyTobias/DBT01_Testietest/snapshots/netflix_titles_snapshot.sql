{% snapshot netflix_titles_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='title_id',
      strategy='check',
      check_cols=['original_title','is_adult']
    )
}}

select *
from {{ ref('netflix_titles_cleansed') }}

{% endsnapshot %}