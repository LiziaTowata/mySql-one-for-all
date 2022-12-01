SELECT m.music_name
AS 'cancao',

COUNT(*) AS 'reproducoes'

FROM SpotifyClone.tabela_music AS m
INNER JOIN SpotifyClone.tabela_historic AS h ON m.music_id = h.music_id

GROUP BY
	m.music_id
ORDER BY
reproducoes DESC,
m.music_name LIMIT 2;