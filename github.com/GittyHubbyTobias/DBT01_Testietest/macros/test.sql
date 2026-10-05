

{% macro test123(getal) %}
    {% set sql %}
        select {{ getal }} 
    {% endset %}

    {{ log('Dit is een logging tekst' ~getal~ 'dit is het getal' )}}
    {{ return(sql) }}
{% endmacro %}
