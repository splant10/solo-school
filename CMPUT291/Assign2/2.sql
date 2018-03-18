prompt Question 2 - splant
SELECT DISTINCT p.name, p.addr, v.type_id
FROM people p, vehicle v
WHERE v.type_id='800'
AND p.sin IN ( SELECT o.owner_id
		FROM owner o
		WHERE o.is_primary_owner='y'
		GROUP BY o.owner_id
		HAVING COUNT(o.owner_id)>=3 );