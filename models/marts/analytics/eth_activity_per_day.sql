
select
date,
transaction_category,
count(*) as tx_count,
{{ conversion('value', '18') }} as sum_value_ethereum

from {{ ref('stg_transaction_enriched') }}

group by 
date,
transaction_category

