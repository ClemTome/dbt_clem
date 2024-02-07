SELECT
products_id,
ROUND(SUM(CAST(purchase_price AS FLOAT64)* quantity)) AS purchase_cost,
ROUND(SUM(revenue - (CAST(purchase_price AS FLOAT64) * quantity))) AS margin
FROM {{ref('stg_raw__sales')}}
JOIN {{ref('stg_raw__product')}}
USING (products_id)
GROUP BY products_id
ORDER BY products_id