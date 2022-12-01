SELECT 
COUNT(*) AS
quantidade_musicas_no_historico

FROM SpotifyClone.tabela_user AS u
INNER JOIN SpotifyClone.tabela_historic AS h ON u.user_id = h.user_id
WHERE u.user_name = 'Barbara Liskov'