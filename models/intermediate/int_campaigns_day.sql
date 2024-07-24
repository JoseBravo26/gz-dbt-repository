select
date_date
, sum (ads_cost) as ads_cost_day
, sum (impression) as impression_day
, sum(click) as click_day
from {{ ref('int_campaigns') }}
group by date_date