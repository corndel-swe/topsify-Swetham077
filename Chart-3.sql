.mode json 
SELECT albums.name AS album_name
    AVG(features.loudness) AS average_loudness
    albums.release_date AS release_date
FROM tracks
JOIN albums ON tracks.album_id = albums.id