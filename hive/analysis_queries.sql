SELECT product_id,
       ROUND(AVG(star_rating),2) AS avg_rating,
       COUNT(*) AS total_reviews
FROM reviews
GROUP BY product_id
HAVING COUNT(*) > 50
ORDER BY avg_rating DESC;