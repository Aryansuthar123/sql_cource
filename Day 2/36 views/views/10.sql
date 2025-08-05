SELECT english_title AS Title, brightness AS "Light Level"
FROM views
WHERE artist = 'Hokusai' AND brightness IS NOT NULL
ORDER BY brightness DESC;
