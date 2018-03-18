SELECT v.serial_no
FROM vehicle v, owner o, people p
WHERE v.serial_no=o.vehicle_id 
AND o.owner_id=p.sin
AND p.addr not like '%Edmonton%';

SELECT DISTINCT p.name, p.addr, v.type_id
FROM people p, vehicle v
WHERE v.type_id='800'
AND p.sin IN ( SELECT o.owner_id
		FROM owner o
		WHERE o.is_primary_owner='y'
		GROUP BY o.owner_id
		HAVING COUNT(o.owner_id)>=3 );

SELECT DISTINCT dl.licence_no, p.name, v.color
	FROM drive_licence dl, people p, vehicle v
	WHERE dl.sin=p.sin
	AND dl.class<>'nondriving'
	AND v.color IN ( SELECT v.color
				FROM vehicle v)
MINUS
SELECT DISTINCT dl.licence_no, p.name, v.color
	FROM drive_licence dl, people p, vehicle v
	WHERE dl.sin=p.sin
	AND v.color IN ( SELECT v.color
					FROM vehicle v
					where v.color LIKE '%Red%');
