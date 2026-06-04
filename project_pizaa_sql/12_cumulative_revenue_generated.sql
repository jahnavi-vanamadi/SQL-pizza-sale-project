-- Analyze the cumulative revenue generated over time.

SELECT
    order_date,
    revenue,
    SUM(revenue) OVER (ORDER BY order_date) AS cumulative_revenue
FROM 
    (SELECT 
        orders.order_date,
        SUM(pizzas.price*order_details.quantity) AS revenue
    FROM pizzas
    JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
    JOIN order_details ON pizzas.pizza_id = order_details.pizza_id
    JOIN orders ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date )
