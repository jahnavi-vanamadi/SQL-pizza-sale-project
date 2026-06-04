-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
SELECT
    pizza_name,
    pizza_category,
    total_revenue,
    RANK() OVER (PARTITION BY pizza_category ORDER BY total_revenue DESC) AS rnk
FROM

   ( SELECT  
        pizza_types.name AS Pizza_name,
        pizza_types.category AS Pizza_category,
        SUM (pizzas.price*(order_details.quantity)) AS  total_revenue
    FROM 
        pizzas 
    JOIN 
        order_details 
            ON pizzas.pizza_id = order_details.pizza_id
    JOIN 
        pizza_types
            ON pizza_types.pizza_type_id = pizzas.pizza_type_id

    GROUP BY pizza_category , pizza_name) AS a;
