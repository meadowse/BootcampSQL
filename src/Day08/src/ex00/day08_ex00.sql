-- Сессия 1
BEGIN TRANSACTION; -- Чтобы начать транзакцию
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut'; -- Обновить данные в 1 сессии
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- Показать обновлённые данные первой сессии
-- Сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- Проверить, что данные во второй сессии не обновились
-- Сессия 1
COMMIT; -- Успешно завершаем транзакцию
-- Сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- Проверяем, что транзакция прошла успешно