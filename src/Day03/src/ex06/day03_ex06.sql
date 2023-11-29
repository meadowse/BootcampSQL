SELECT mp1.pizza_name AS pizza_name, mp1.name AS pizzeria_name_1, mp2.name AS pizzeria_name_2, mp1.price AS price
FROM (SELECT menu.id AS id, pizza_name, price, name FROM menu JOIN pizzeria p on menu.pizzeria_id = p.id) AS mp1
    JOIN (SELECT menu.id AS id, pizza_name, price, name FROM menu JOIN pizzeria p on menu.pizzeria_id = p.id) AS mp2
    ON mp1.price = mp2.price AND mp1.pizza_name = mp2.pizza_name AND mp1.name != mp2.name AND mp1.id > mp2.id
    ORDER BY pizza_name