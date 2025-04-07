-- Branches
INSERT INTO Branches (branch_name, location) VALUES
('Central Branch', 'Budapest'),
('North Branch', 'Debrecen');

-- Customers
INSERT INTO Customers (full_name, email, phone, created_at) VALUES
('John Doe', 'john@example.com', '1234567890', '2023-01-01'),
('Jane Smith', 'jane@example.com', '0987654321', '2023-02-15');

-- Accounts
INSERT INTO Accounts (customer_id, branch_id, account_type, balance, opened_date) VALUES
(1, 1, 'Savings', 2500.00, '2023-01-02'),
(2, 2, 'Checking', 1400.00, '2023-02-16');

-- Transactions
INSERT INTO Transactions (account_id, transaction_date, amount, transaction_type, description) VALUES
(1, '2023-03-01', 500.00, 'credit', 'Salary'),
(1, '2023-03-05', 100.00, 'debit', 'Grocery'),
(2, '2023-03-02', 700.00, 'credit', 'Freelance payment');
