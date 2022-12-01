SELECT 
f.column_famous AS 'artista',
a.album_name AS 'album',

COUNT(*) AS 'seguidores'

FROM SpotifyClone.tabela_famous AS f
INNER JOIN SpotifyClone.tabela_album AS a ON f.famous_id = a.famous_id
INNER JOIN SpotifyClone.tabela_follwing AS fl ON a.famous_id = fl.famous_id 

GROUP BY
	a.album_id
ORDER BY
seguidores DESC,
f.column_famous,
a.album_name;





