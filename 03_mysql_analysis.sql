SELECT * FROM decodelabs.data_analyticsp1;


-- Total revenue, orders, avg order value
SELECT 
    COUNT(*) AS total_orders,
    round(SUM(TotalPrice),2) AS total_revenue,
    ROUND(AVG(TotalPrice), 2) AS avg_order_value
FROM data_analyticsp1;


SELECT 
    OrderStatus,
    COUNT(*) AS order_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM data_analyticsp1), 2) AS percentage,
    SUM(TotalPrice) AS revenue
FROM data_analyticsp1
GROUP BY OrderStatus
ORDER BY order_count DESC;


SELECT 
    Product,
    COUNT(*) AS num_orders,
    SUM(Quantity) AS total_units_sold,
    round(SUM(TotalPrice),2) AS total_revenue,
    ROUND(AVG(UnitPrice), 2) AS avg_unit_price
FROM data_analyticsp1
GROUP BY Product
ORDER BY total_revenue DESC;

SELECT 
    PaymentMethod,
    COUNT(*) AS order_count,
    round(SUM(TotalPrice),2) AS revenue,
    ROUND(AVG(TotalPrice), 2) AS avg_order_value
FROM data_analyticsp1
GROUP BY PaymentMethod
ORDER BY revenue DESC;


SELECT 
    ReferralSource,
    COUNT(*) AS orders,
    SUM(TotalPrice) AS revenue,
    ROUND(AVG(TotalPrice), 2) AS avg_order_value
FROM data_analyticsp1
GROUP BY ReferralSource
ORDER BY revenue DESC;


SELECT 
    CouponCode,
    COUNT(*) AS times_used,
    SUM(TotalPrice) AS revenue_with_coupon,
    ROUND(AVG(TotalPrice), 2) AS avg_order_value
FROM data_analyticsp1
GROUP BY CouponCode
ORDER BY times_used DESC;

SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%m/%d/%Y'), '%Y-%m') AS month,
    COUNT(*) AS orders,
    round(SUM(TotalPrice),2) AS revenue
FROM data_analyticsp1
GROUP BY month
ORDER BY month;


SELECT 
    CustomerID,
    COUNT(*) AS total_orders,
    round(SUM(TotalPrice),2) AS total_spent
FROM data_analyticsp1
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;


SELECT 
    OrderStatus,
    COUNT(*) AS orders,
    round(SUM(TotalPrice),2) AS lost_revenue
FROM data_analyticsp1
WHERE OrderStatus IN ('Cancelled', 'Returned')
GROUP BY OrderStatus;

SELECT 
    Product,
    ROUND(AVG(ItemsInCart), 2) AS avg_items_in_cart,
    ROUND(AVG(Quantity), 2) AS avg_quantity_ordered,
    ROUND(AVG(ItemsInCart - Quantity), 2) AS avg_diff
FROM data_analyticsp1
GROUP BY Product
ORDER BY avg_diff DESC;

SELECT ReferralSource, Product, revenue
FROM (
    SELECT 
        ReferralSource,
        Product,
        round(SUM(TotalPrice),2) AS revenue,
        RANK() OVER (PARTITION BY ReferralSource ORDER BY SUM(TotalPrice) DESC) AS rnk
    FROM data_analyticsp1
    GROUP BY ReferralSource, Product
) ranked
WHERE rnk = 1;










