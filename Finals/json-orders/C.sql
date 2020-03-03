SELECT 
   info ->> 'customer' AS "customer_who_bought_least_product"
FROM
   "030320".orders
   
ORDER BY 
CAST
(info -> 'items' ->> 'qty' as INTEGER)
ASC LIMIT 1;