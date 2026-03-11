/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */
SELECT sub.special_features, count(DISTINCT TITLE)
FROM (
	SELECT title, unnest(special_features) AS special_features
	FROM film) AS sub
GROUP BY sub.special_features
ORDER BY sub.special_features ASC;
