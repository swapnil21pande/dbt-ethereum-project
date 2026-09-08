select
    sum(value) as total_amount
from {{ ref('stg_transaction_enriched') }}

having total_amount < 0