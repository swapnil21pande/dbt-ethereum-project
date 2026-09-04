{{ config(tags=['stablecoin'], grants={'select': ['TESTER']}) }}

select
    t.date,
    s.type,
    sum(t.value * 8) as total_usd_value
    
from {{ ref('stg_token_transfer') }} t

left join {{ ref('stablecoins') }} s
    on t.token_address = s.contract_address

where s.contract_address is not null

group by
    t.date,
    s.type
