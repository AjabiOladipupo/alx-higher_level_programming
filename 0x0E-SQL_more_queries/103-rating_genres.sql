-- ALX SQL Introduction
-- Oladipupo Ajabi
SELECT g.name, SUM(sr.rate) AS rating FROM tv_genres g
JOIN tv_show_genres sg
ON g.id = sg.genre_id
JOIN tv_shows s
ON s.id = sg.show_id
JOIN tv_show_ratings sr
ON sr.show_id = s.id
GROUP BY g.name
ORDER BY rating DESC
