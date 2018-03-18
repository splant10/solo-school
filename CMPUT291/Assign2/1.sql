prompt Question 1 - splant
SELECT v.serial_no
FROM vehicle v, owner o, people p
WHERE v.serial_no=o.vehicle_id 
AND o.owner_id=p.sin
AND p.addr not like '%Edmonton%';