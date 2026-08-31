
select {{ dbt_utils.star(from = ref('stg_transaction_enriched'), except =['new_field'], quote_identifiers = False) }}

from {{ ref('stg_transaction_enriched') }}
