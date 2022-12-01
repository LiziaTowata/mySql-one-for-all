SELECT u.user_name 
AS 'usuario',

COUNT(*) AS 'qt_de_musicas_ouvidas',

ROUND(SUM(m.music_time) / 60, 2) AS 'total_minutos'

FROM SpotifyClone.tabela_user AS u
INNER JOIN SpotifyClone.tabela_historic AS h 
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.tabela_music AS m 
ON h.music_id = m.music_id

GROUP BY
	u.user_name
ORDER BY
	u.user_name