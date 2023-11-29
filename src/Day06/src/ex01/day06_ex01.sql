INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER ( ) OVER ( ) AS id, person_id, m.pizzeria_id,
       CASE
           WHEN COUNT(person_order) = 1 THEN 10.5
           WHEN COUNT(person_order) = 2 THEN 22
           ELSE 30
           END FROM person_order JOIN menu m on person_order.menu_id = m.id
GROUP BY person_id, m.pizzeria_id