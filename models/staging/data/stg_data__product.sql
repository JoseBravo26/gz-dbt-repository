with 

source as (

    select * from {{ source('data', 'product') }}

),

renamed as (

    select

    from source

)

select * from renamed
