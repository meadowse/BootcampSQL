CREATE INDEX idx_person_order_multi ON person_order(person_id, menu_id, order_date);
SET enable_seqscan = OFF;
EXPLAIN ANALYZE SELECT person_id, menu_id, order_date FROM person_order WHERE person_id = 6 AND menu_id = 20;
-- SET enable_seqscan = ON;
-- EXPLAIN ANALYZE SELECT person_id, menu_id, order_date FROM person_order WHERE person_id = 6 AND menu_id = 20