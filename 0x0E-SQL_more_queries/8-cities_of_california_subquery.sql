-- ALX SQL Introduction
-- Oladipupo Ajabi
SELECT 
id, 
name 
FROM cities 
WHERE state_id=
	(
		SELECT id FROM states WHERE name= 'California'
	);

