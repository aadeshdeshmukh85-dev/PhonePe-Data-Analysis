CREATE DATABASE phonepe_analysis;
USE phonepe_analysis;
CREATE TABLE agg_trans (
    state VARCHAR(50),
    year INT,
    quarter INT,
    transaction_type VARCHAR(50),
    transaction_count BIGINT,
    transaction_amount DOUBLE,
    avg_transaction_value DOUBLE
);
CREATE TABLE agg_user (
    state VARCHAR(50),
    year INT,
    quarter INT,
    brand VARCHAR(50),
    transaction_count BIGINT,
    percentage DOUBLE,
    region VARCHAR(50)
);
CREATE TABLE map_trans (
    state VARCHAR(50),
    district VARCHAR(50),
    year INT,
    quarter INT,
    transaction_count BIGINT,
    transaction_amount DOUBLE
);
CREATE TABLE map_user (
    state VARCHAR(50),
    district VARCHAR(50),
    year INT,
    quarter INT,
    registered_users BIGINT,
    app_opens BIGINT
);
CREATE TABLE top_trans_dist (
    district VARCHAR(50),
    state VARCHAR(50),
    year INT,
    quarter INT,
    transaction_count BIGINT,
    transaction_amount DOUBLE
);
SELECT * FROM agg_trans LIMIT 5;
SELECT * FROM agg_user LIMIT 5;
SELECT * FROM map_trans LIMIT 5;
SELECT * FROM map_user LIMIT 5;
SELECT * FROM top_trans_dist LIMIT 5;
-- Total transactions per state
SELECT state, SUM(transaction_amount) AS total_amount
FROM agg_trans
GROUP BY state
ORDER BY total_amount DESC
LIMIT 10;
SELECT year, SUM(transaction_amount) AS total_amount
FROM agg_trans
GROUP BY year
ORDER BY year;
SELECT transaction_type, SUM(transaction_count) AS total_count
FROM agg_trans
GROUP BY transaction_type
ORDER BY total_count DESC;
SELECT year, quarter, SUM(transaction_amount) AS total_amount
FROM agg_trans
WHERE state='Maharashtra'
GROUP BY year, quarter
ORDER BY year, quarter;
SELECT brand, SUM(transaction_count) AS total_transactions
FROM agg_user
GROUP BY brand
ORDER BY total_transactions DESC;
SELECT region, SUM(transaction_count) AS total_users
FROM agg_user
GROUP BY region
ORDER BY total_users DESC;
SELECT year, SUM(transaction_count) AS total_users
FROM agg_user
GROUP BY year
ORDER BY year;
SELECT state, district, SUM(transaction_amount) AS total_amount
FROM map_trans
GROUP BY state, district
ORDER BY total_amount DESC
LIMIT 10;
SELECT state, SUM(transaction_count) AS total_transactions
FROM map_trans
GROUP BY state
ORDER BY total_transactions DESC;
SELECT state, district, SUM(registered_users) AS total_users
FROM map_user
GROUP BY state, district
ORDER BY total_users DESC
LIMIT 10;
SELECT year, quarter, SUM(app_opens) AS total_app_opens
FROM map_user
GROUP BY year, quarter
ORDER BY year, quarter;
SELECT year, state, district, SUM(transaction_amount) AS total_amount
FROM top_trans_dist
GROUP BY year, state, district
ORDER BY total_amount DESC
LIMIT 10;
SELECT state, district, SUM(transaction_count) AS total_transactions
FROM top_trans_dist
GROUP BY state, district
ORDER BY total_transactions DESC
LIMIT 10;