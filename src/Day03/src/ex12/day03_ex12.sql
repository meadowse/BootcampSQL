WITH ids(id) AS (SELECT ids FROM generate_series(1, (SELECT count(*) FROM person)) AS ids(id))
INSERT INTO person_order SELECT
    ids.id + (SELECT MAX(id) FROM person_order) AS id,
    ids.id AS person_id,
    (SELECT id FROM menu WHERE pizza_name = 'greek pizza') AS menu_id,
    '2022-02-25' AS order_date
FROM person
JOIN ids ON ids.id = person.id
-- DELETE FROM person_order WHERE order_date = '2022-02-25'