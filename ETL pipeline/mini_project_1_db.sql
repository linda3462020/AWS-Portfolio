CREATE TABLE customer_reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id VARCHAR(50) NOT NULL,
    user_id VARCHAR(50) NOT NULL,
    profile_name VARCHAR(255),
    helpfulness_numerator INT,
    helpfulness_denominator INT,
    score INT CHECK (score BETWEEN 1 AND 5),
    review_time TIMESTAMP,
    summary TEXT,
    review_text TEXT
);



# Write some dummy data into the table

INSERT INTO customer_reviews (product_id, user_id, profile_name, helpfulness_numerator, helpfulness_denominator, score, review_time, summary, review_text) 
VALUES 
    ('B001E4KFG0', 'A3SGXH7AUHU8GW', 'delmartian', 1, 1, 5, '2024-01-01 12:00:00', 'Good Quality Dog Food', 'I have bought several of the Vitality canned dog food products and found them all to be of good quality.'),
    ('B00813GRG4', 'A1D87F6ZCVE5NK', 'dll pa', 0, 0, 1, '2024-02-10 15:30:00', 'Not as Advertised', 'Product arrived labeled as Jumbo Salted Peanuts...the peanuts were actually small sized unsalted.'),
    ('B000LQOCH0', 'ABXLMWJIXXAIN', 'Natalia Corres', 1, 1, 4, '2024-03-05 09:15:00', 'Delight says it all', 'This is a confection that has been around a few centuries. It is a light, pillowy citrus gelatin with nuts.'),
    ('B005K4Q34S', 'A2N9RKQWDD1RT', 'Karl', 3, 3, 2, '2024-04-12 18:45:00', 'Not worth it', 'The taste was disappointing. The packaging was misleading, and the product did not match expectations.'),
    ('B002QWHJOU', 'A1UQBFCERIP7VJ', 'SarahL', 2, 3, 5, '2024-05-20 14:10:00', 'Amazing Product!', 'This is by far the best purchase I have made. It exceeded all my expectations.'),
    ('B00813GRG4', 'A3R5OBKSNFO3GZ', 'Micheal', 4, 5, 4, '2024-06-07 10:20:00', 'Pretty Good', 'Overall, I am happy with the product, but I wish it had a bit more flavor.'),
    ('B001GVISJM', 'A2VE83MZF98ITY', 'Julia', 5, 5, 5, '2024-07-14 16:50:00', 'Would Buy Again', 'This was a fantastic product. The ingredients were fresh and tasted great.'),
    ('B000J4HXTG', 'A1Z5Q2Z7C4D9PG', 'Tony', 1, 2, 3, '2024-08-21 08:30:00', 'It’s okay', 'Nothing special about this product. It does what it says, but nothing exceptional.'),
    ('B003ZX8B2S', 'A3HQAPXAJVAKT6', 'Emily', 3, 4, 2, '2024-09-10 12:05:00', 'Disappointed', 'The product was not what I expected. The quality was poor and not worth the money.'),
    ('B007WTAJTO', 'A2CX7LUOHB2NDG', 'David', 2, 2, 5, '2024-10-18 19:00:00', 'Excellent', 'I love this product! The packaging was great, and it was exactly as described.');


# Clear all data from the table
TRUNCATE TABLE customer_reviews;
