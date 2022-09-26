SELECT
    MIN(p.plan_value) AS 'faturamento_minimo',
    MAX(p.plan_value) AS 'faturamento_maximo',
    CONVERT(ROUND(AVG(p.plan_value), 2), CHAR) AS 'faturamento_medio',
    CONVERT(ROUND(SUM(p.plan_value), 2), CHAR) AS 'faturamento_total'
FROM 
	SpotifyClone.users u
    INNER JOIN SpotifyClone.plans p ON p.plan_id = u.plan_id;
