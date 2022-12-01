SELECT
  MIN(p.price_plan) AS 'faturamento_minimo',
  
  MAX(p.price_plan) AS 'faturamento_maximo',
  
  ROUND(AVG(p.price_plan), 2) AS 'faturamento_medio',
  
  ROUND(SUM(p.price_plan), 2) AS 'faturamento_total'
  
FROM SpotifyClone.tabela_plan AS p
INNER JOIN SpotifyClone.tabela_user AS u
ON p.plan_id = u.plan_id