-- Сессия 1
SHOW TRANSACTION ISOLATION LEVEL;
-- Суссия 2
SHOW TRANSACTION ISOLATION LEVEL;
-- Сессия 1
BEGIN TRANSACTION;
-- Суссия 2
BEGIN TRANSACTION;
-- Сессия 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Суссия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Сессия 1
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
-- Суссия 2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
-- Сессия 1
COMMIT;
-- Суссия 2
COMMIT;
-- Сессия 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Суссия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';