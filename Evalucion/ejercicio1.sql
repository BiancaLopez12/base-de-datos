SELECT city, type FROM crime_scene_report 
WHERE type like "murder"
GROUP BY city
ORDER by city ASC