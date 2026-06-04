-- List the top 5 most ordered pizza types along with their quantities.


SELECT 
   pizza_types.name ,
   SUM (order_details.quantity) AS quantity_of_pizzas_ordered
FROM pizzas
JOIN order_details ON pizzas.pizza_id = order_details.pizza_id
JOIN pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY pizza_types.name
ORDER BY quantity_of_pizzas_ordered DESC
LIMIT 5