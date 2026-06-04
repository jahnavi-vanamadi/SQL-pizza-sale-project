-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(number_pizzas),0) AS average_number_of_pizzas_ordered_per_day

FROM
    (SELECT 
        orders.order_date , SUM(order_details.quantity) AS number_pizzas
     FROM orders
     JOIN order_details ON orders.order_id = order_details.order_id
     GROUP BY orders.order_date)  AS order_quantity ;



