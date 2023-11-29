WITH days(day) AS (
    SELECT days::DATE FROM generate_series('2022-01-01', '2022-01-10', INTERVAL '1 day') AS days(day)
    )
SELECT day FROM days LEFT JOIN
(SELECT * FROM person LEFT JOIN person_visits ON person.id = person_visits.person_id
WHERE person.id = 1 OR person.id = 2) as pv ON days.day = pv.visit_date WHERE age IS NULL