SELECT
    avg_net_salary,
    CONCAT(municipality_code, '_', year) AS town_year
FROM {{ source('raw', 'salary') }}