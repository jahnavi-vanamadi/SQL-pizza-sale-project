-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
   category,
   Count(name) as pizaascount
FROM pizza_types
GROUP BY category
ORDER BY pizaascount DESC