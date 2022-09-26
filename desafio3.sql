SELECT
	u.name AS usuario,
    COUNT(ph.user_id) AS qt_de_musicas_ouvidas,
    ROUND ((SUM(s.duration_seconds)/60), 2) AS total_minutos
    FROM SpotifyClone.users AS u
    INNER JOIN SpotifyClone.play_history AS ph
    ON u.user_id = ph.user_id
    INNER JOIN SpotifyClone.songs AS s
    ON s.song_id = ph.song_id
    GROUP BY usuario
    ORDER BY usuario;
    
