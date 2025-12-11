CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  price NUMERIC NOT NULL
);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  qty INTEGER NOT NULL DEFAULT 1,
  ordered_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO users (name, email) VALUES ('Asha', 'asha@example.com');
INSERT INTO users (name, email) VALUES ('Ravi', 'ravi@example.com');

INSERT INTO products (name, price) VALUES ('T-shirt', 299.00);
INSERT INTO products (name, price) VALUES ('Mug', 199.00);

INSERT INTO orders (user_id, product_id, qty) VALUES (1, 1, 2);
INSERT INTO orders (user_id, product_id, qty) VALUES (2, 2, 1);
