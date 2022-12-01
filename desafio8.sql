SELECT 
f.column_famous AS 'artista',
a.album_name AS 'album'

FROM SpotifyClone.tabela_famous AS f
INNER JOIN SpotifyClone.tabela_album AS a ON f.famous_id = a.famous_id
WHERE f.column_famous = 'Elis Regina'
ORDER BY a.album_name;