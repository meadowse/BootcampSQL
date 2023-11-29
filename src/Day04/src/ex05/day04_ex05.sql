CREATE VIEW v_price_with_discount AS (SELECT name, pizza_name, price, round(price * 0.9) AS discount_price
FROM (SELECT * FROM person_order JOIN person ON person_order.person_id = person.id) as po JOIN menu
    ON po.menu_id = menu.id ORDER BY name, pizza_name)