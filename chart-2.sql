.mode json
SELECT artists.name AS artist_name, albums.name AS album_name,
       AVG(features.danceability) AS average_danceability,
       AVG(features.energy) AS average_energy,
       AVG(features.speechiness) AS average_speechiness,
       AVG(features.acousticness) AS average_acousticness,
       AVG(features.liveness) AS average_liveness
FROM tracks
JOIN albums ON tracks.album_id = albums.id
JOIN artists ON albums.artist_id = artists.id
JOIN features ON tracks.id = features.track_id
GROUP BY albums.id;