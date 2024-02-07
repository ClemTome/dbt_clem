SELECT
date_date
,ROUND(COUNT(orders_id),2) AS nb_transaction
,ROUND(SUM(revenue),2) AS revenue
,ROUND(AVG(revenue),2) AS average_basket
,ROUND(SUM(margin),2) AS margin 
,ROUND(SUM(operational_margin),2) AS operational_margin
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC