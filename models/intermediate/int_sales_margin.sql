SELECT
products_id,
purchase_price,
quantity,
revenue
FROM {{ref('stg_raw__sales')}}
JOIN {{ref('stg_raw__product')}}
USING (products_id)
ORDER BY products_id