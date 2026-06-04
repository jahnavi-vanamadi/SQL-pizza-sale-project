-- 1
COPY pizza_types(pizza_type_id, name, category, ingredients)
FROM 'C:/Users/USER/OneDrive/Desktop/SQL pizza sale project/pizza_sales/pizza_types.csv'
DELIMITER ','
CSV HEADER;

-- 2
COPY pizzas(pizza_id, pizza_type_id, size, price)
FROM 'C:/Users/USER/OneDrive/Desktop/SQL pizza sale project/pizza_sales/pizzas.csv'
DELIMITER ','
CSV HEADER;

-- 3
COPY orders(order_id, order_date, order_time)
FROM 'C:/Users/USER/OneDrive/Desktop/SQL pizza sale project/pizza_sales/orders.csv'
DELIMITER ','
CSV HEADER;

-- 4
COPY order_details(order_details_id, order_id, pizza_id, quantity)
FROM 'C:/Users/USER/OneDrive/Desktop/SQL pizza sale project/pizza_sales/order_details.csv'
DELIMITER ','
CSV HEADER;