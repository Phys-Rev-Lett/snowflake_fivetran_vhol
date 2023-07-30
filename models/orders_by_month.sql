select
  date_trunc(month,order_date)as order_yearmonth,
  status,
  count(*)as order_count
from
  {{ source('','') }}
group by
  1,2
