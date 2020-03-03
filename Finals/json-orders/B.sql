SELECT DISTINCT
   info ->> 'customer' AS customer_who_bought_Diaper_and_Beer
FROM
   "030320".orders
WHERE
   info -> 'items' ->> 'product' = 'Diaper' 
   
INTERSECT

SELECT DISTINCT
   info ->> 'customer' AS customer
FROM
   "030320".orders
WHERE
   info -> 'items' ->> 'product' = 'Beer';