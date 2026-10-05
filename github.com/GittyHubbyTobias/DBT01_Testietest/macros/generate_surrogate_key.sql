{% macro generate_surrogate_key(col1, col2) %}

md5(
    concat(
        {{ col1 }},
        {{ col2 }}
    )
)

{% endmacro %}