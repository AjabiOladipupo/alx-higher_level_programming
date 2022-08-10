-- ALX SQL Introduction
-- Oladipupo Ajabi

SELECT g.name FROM tv_genres g
LEFT JOIN (
	SELECT g.id FROM tv_genres g
	JOIN tv_show_genres sg
	ON g.id = sg.genre_id
	JOIN tv_shows s
	ON s.id = sg.show_id
	WHERE s.title = 'Dexter'
) AS sub_set
ON g.id = sub_set.id
WHERE sub_set.id IS NULL
ORDER BY g.name;
