SELECT generate_date as missing_date FROM v_generated_dates
WHERE generate_date NOT IN (SELECT visit_date FROM person_visits) ORDER BY missing_date