with population as (
    select
        population,
        municipality_code,
        year
    from {{ source('raw', 'population') }}
)

select
    *    
from population
