CREATE UNIQUE INDEX idx_menu_unique ON menu(pizzeria_id, pizza_name);
SET enable_seqscan = OFF;
EXPLAIN ANALYZE SELECT * FROM menu WHERE pizzeria_id = 2 AND pizza_name = 'sicilian pizza';
-- SET enable_seqscan = ON;
-- EXPLAIN ANALYZE SELECT * FROM menu WHERE pizzeria_id = 2 AND pizza_name = 'sicilian pizza'