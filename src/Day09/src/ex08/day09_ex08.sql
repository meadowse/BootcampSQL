CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10)
RETURNS TABLE (allFibo BIGINT) AS $$
    WITH RECURSIVE fibo AS
    (SELECT 0 AS first, 1 AS second UNION ALL SELECT second, first + second FROM fibo WHERE second < pstop)
    SELECT first FROM fibo
    $$ LANGUAGE sql