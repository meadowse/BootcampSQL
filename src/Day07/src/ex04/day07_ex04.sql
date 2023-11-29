WITH src as (SELECT name, count(*) AS count_of_visits FROM person_visits pv JOIN person p
    ON pv.person_id = p.id GROUP BY name)
SELECT src.name AS name, count_of_visits FROM person JOIN src ON person.name = src.name AND count_of_visits > 3