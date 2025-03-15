select
    *,
    CONCAT(municipality_code, '_', year) AS town_year
FROM {{ref('stg_population')}}
