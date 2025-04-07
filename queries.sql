-- Total transactions per branch
SELECT b.branch_name, COUNT(t.transaction_id) AS total_transactions
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
JOIN Branches b ON a.branch_id = b.branch_id
GROUP BY b.branch_name;

-- Active customers with balance > 1000
SELECT c.full_name, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.balance > 1000;

-- Monthly summary per customer
SELECT c.full_name, DATE_TRUNC('month', t.transaction_date) AS month,
       SUM(CASE WHEN t.transaction_type = 'credit' THEN t.amount ELSE 0 END) AS total_credits,
       SUM(CASE WHEN t.transaction_type = 'debit' THEN t.amount ELSE 0 END) AS total_debits
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY c.full_name, month
ORDER BY month;
