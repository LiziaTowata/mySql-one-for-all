SELECT COUNT(*) 
AS cancoes,

(SELECT COUNT(column_famous) 
FROM SpotifyClone.tabela_famous)
AS artistas,

(SELECT COUNT(album_name)
FROM SpotifyClone.tabela_album)
AS albuns
FROM SpotifyClone.tabela_user