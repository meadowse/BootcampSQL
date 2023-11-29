SELECT name,
       count(*) AS count_of_orders,
       round(sum(price) / count(*), 2) AS average_price,
       max(price) AS max_price,
       min(price) AS min_price
FROM pizzeria p JOIN menu m on p.id = m.pizzeria_id JOIN person_order po on m.id = po.menu_id GROUP BY name ORDER BY name