with 

source as (

    select * from {{ source('raw', 'establishments') }}
    UNION ALL
    select * from {{ source('raw', 'sites') }}

),


renamed as (

    select
        poi,
        latitude,
        longitude,
        municipality_code,
        importance,
        name_reprocessed

    from source

)

select * from renamed