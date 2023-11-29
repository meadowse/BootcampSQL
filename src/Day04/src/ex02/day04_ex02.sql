CREATE VIEW v_generated_dates(generate_date) AS (SELECT v_generated_dates::DATE
FROM generate_series('2022-01-01', '2022-01-31', INTERVAL '1 day') AS v_generated_dates(generate_date)
ORDER BY generate_date)