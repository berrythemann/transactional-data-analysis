-- Create transactions table
CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    customer_id INT,
    transaction_date DATE,
    amount DECIMAL(10,2),
    category VARCHAR(50),
    payment_method VARCHAR(20)
);

-- Insert 10M+ transactions
INSERT INTO transactions (customer_id, transaction_date, amount, category, payment_method)
SELECT 
    (random() * 1000000)::INT AS customer_id,
    NOW() - INTERVAL '1 day' * (random() * 730)::INT AS transaction_date,
    (random() * 50000 + 100)::DECIMAL(10,2) AS amount,
    (ARRAY['Electronics', 'Groceries', 'Fashion', 'Health', 'Automobile'])[floor(random() * 5 + 1)] AS category,
    (ARRAY['Credit Card', 'Debit Card', 'Bank Transfer', 'Cash', 'Mobile Payment'])[floor(random() * 5 + 1)] AS payment_method
FROM generate_series(1, 10000000);

-- Sample analysis queries
-- Total transactions per category
SELECT category, COUNT(*) AS total_transactions, SUM(amount) AS total_revenue
FROM transactions
GROUP BY category
ORDER BY total_revenue DESC;

-- Top 5 highest-spending customers
SELECT customer_id, SUM(amount) AS total_spent
FROM transactions
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly revenue trend
SELECT DATE_TRUNC('month', transaction_date) AS month, SUM(amount) AS total_revenue
FROM transactions
GROUP BY month
ORDER BY month;
