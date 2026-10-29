-- Global Robotics Market Intelligence
-- SQL analysis using SQLite
-- Dataset: synthetic/illustrative robotics records


SELECT
    COUNT(*) AS total_records,
    SUM(revenue_usd) AS total_revenue,
    SUM(estimated_cost_usd) AS total_estimated_cost,
    SUM(estimated_gross_profit_usd) AS total_estimated_gross_profit
FROM robotics_market;



SELECT
    product_category,
    COUNT(*) AS total_records,
    SUM(revenue_usd) AS total_revenue,
    SUM(estimated_gross_profit_usd) AS total_estimated_profit,
    ROUND(
        100.0 * SUM(estimated_gross_profit_usd)
        / NULLIF(SUM(revenue_usd), 0), 2
    ) AS profit_margin_pct
FROM robotics_market
GROUP BY product_category
ORDER BY total_revenue DESC;



SELECT
    industry,
    COUNT(*) AS total_records,
    SUM(revenue_usd) AS total_revenue,
    SUM(estimated_gross_profit_usd) AS total_estimated_profit
FROM robotics_market
GROUP BY industry
ORDER BY total_revenue DESC;



SELECT
    sales_channel,
    COUNT(*) AS total_records,
    SUM(revenue_usd) AS total_revenue,
    SUM(estimated_gross_profit_usd) AS total_estimated_profit
FROM robotics_market
GROUP BY sales_channel
ORDER BY total_revenue DESC;

