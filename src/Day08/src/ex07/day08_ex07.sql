-- Сессия 1
BEGIN TRANSACTION;
-- Сессия 2
BEGIN TRANSACTION;
-- Сессия 1
UPDATE pizzeria SET rating = 4 WHERE id = 1;
-- Сессия 2
UPDATE pizzeria SET rating = 5 WHERE id = 2;
-- Сессия 1
UPDATE pizzeria SET rating = 4 WHERE id = 2;
-- Сессия 2
UPDATE pizzeria SET rating = 5 WHERE id = 1;
-- Сессия 1
COMMIT;
-- Сессия 2
COMMIT;
-- Сессия 1
SELECT * FROM pizzeria WHERE id = 1 OR id = 2;
-- Сессия 2
SELECT * FROM pizzeria WHERE id = 1 OR id = 2;