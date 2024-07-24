-- models/all_sources_union.sql

select
    'stg_data__adwords' as source,
    *
from
    {{ ref('stg_data__adwords') }}

union all

select
    'stg_data__bing' as source,
    *
from
    {{ ref('stg_data__bing') }}

union all

select
    'stg_data__criteo' as source,
    *
from
    {{ ref('stg_data__criteo') }}

union all

select
    'stg_data__facebook' as source,
    *
from
    {{ ref('stg_data__facebook') }}