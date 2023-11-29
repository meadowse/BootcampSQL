(SELECT pizza_name as object_name FROM menu ORDER BY pizza_name)
UNION ALL (SELECT name FROM person ORDER BY name) ORDER BY object_name