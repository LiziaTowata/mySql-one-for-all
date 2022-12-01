SELECT u.user_name 
AS 'usuario',

IF (
		YEAR(MAX(h.date_reprodutions)) >= 2021,
		'Usuário ativo',
		'Usuário inativo'
	) AS 'status_usuario'


FROM SpotifyClone.tabela_user AS u
INNER JOIN SpotifyClone.tabela_historic AS h ON u.user_id = h.user_id

GROUP BY
	u.user_name
ORDER BY
	u.user_name