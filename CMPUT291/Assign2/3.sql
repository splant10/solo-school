prompt Question 3 - splant
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