select
    date_trunc(year,order_date) as order_yearmonth,
    status,
    count(*) as order_count
from
    {{ source('google_ads_demo.clik_performance','CLIK_PERFORMANCE') }}
group by
    1,2
