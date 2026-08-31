select
transaction_hash,
date,
token_address,
value

from {{ source('eth_src','token_transfers')}} 
