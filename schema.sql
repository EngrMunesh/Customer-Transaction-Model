CREATE TABLE Branches (
    branch_id SERIAL PRIMARY KEY,
    branch_name VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    created_at DATE
);

CREATE TABLE Accounts (
    account_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    branch_id INT REFERENCES Branches(branch_id),
    account_type VARCHAR(50),
    balance DECIMAL(12, 2),
    opened_date DATE
);

CREATE TABLE Transactions (
    transaction_id SERIAL PRIMARY KEY,
    account_id INT REFERENCES Accounts(account_id),
    transaction_date DATE,
    amount DECIMAL(12, 2),
    transaction_type VARCHAR(20), -- 'credit' or 'debit'
    description TEXT
);
