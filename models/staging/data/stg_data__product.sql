with 

source as (

    select * from {{ source('data', 'product') }}

),

renamed as (

    select
product_id,
purchSE_PRICE as purchase_price
    from source

)

select * from renamed
