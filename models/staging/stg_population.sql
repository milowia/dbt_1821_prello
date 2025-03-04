with population as (
    select
        municipality_code,
        population,
        year
    from {{ source('raw', 'population') }}
),

poverty_population as (
    select
        municipality_code,
        population as poverty_population,
        year
    from {{ source('raw', 'poverty_population') }}
)

select 
    *
from population
FULL OUTER JOIN
poverty_population
USING(municipality_code, year)

