-- Calculate the percentage contribution of each pizza type to total revenue

    
SELECT 
    pizza_category,
    ROUND(total_revenue * 100.0 / SUM(total_revenue) OVER (), 2) AS percent
FROM
    (SELECT 
            pizza_types.category AS Pizza_category,
            ROUND(SUM(pizzas.price*order_details.quantity ),2)  AS  total_revenue
        FROM 
            pizzas 
        JOIN 
            order_details 
                ON pizzas.pizza_id = order_details.pizza_id
        JOIN 
            pizza_types
                ON pizza_types.pizza_type_id = pizzas.pizza_type_id

        GROUP BY Pizza_category 
        ORDER BY  total_revenue DESC) AS pizza_revenue

