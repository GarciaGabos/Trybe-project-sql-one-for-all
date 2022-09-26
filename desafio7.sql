SELECT
  ar.artist_name AS artista,
  al.album_name AS album,
  COUNT(sa.artist_id) AS seguidores
FROM SpotifyClone.following_artists AS sa
JOIN SpotifyClone.artists AS ar 
  ON ar.artist_id = sa.artist_id
JOIN SpotifyClone.albums AS al
  ON al.artist_id = sa.artist_id
GROUP BY al.album_id
ORDER BY seguidores DESC, artista, album;
