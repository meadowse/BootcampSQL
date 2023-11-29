SELECT gs FROM (select gs::date
from generate_series('2022-01-01', '2022-01-10', interval '1 day') as gs) as gs LEFT JOIN
(SELECT * FROM person LEFT JOIN person_visits ON person.id = person_visits.person_id
WHERE person.id = 1 OR person.id = 2) as quarry ON gs.gs = quarry.visit_date WHERE age IS NULL