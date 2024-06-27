-- Create table if not exists
CREATE TABLE IF NOT EXISTS item (
    id SERIAL PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    price FLOAT NOT NULL
);

-- Insert initial data
INSERT INTO item (name, price) VALUES ('Apple Mojito', 159);
INSERT INTO item (name, price) VALUES ('Veg Momos', 69);
INSERT INTO item (name, price) VALUES ('Cheeseburger', 249);
INSERT INTO item (name, price) VALUES ('Margherita Pizza', 299);
INSERT INTO item (name, price) VALUES ('Chicken Tikka Masala', 349);
INSERT INTO item (name, price) VALUES ('Spaghetti Carbonara', 279);
INSERT INTO item (name, price) VALUES ('Caesar Salad', 199);
INSERT INTO item (name, price) VALUES ('Sushi Combo', 399);
INSERT INTO item (name, price) VALUES ('Pad Thai', 229);
INSERT INTO item (name, price) VALUES ('BBQ Ribs', 389);
INSERT INTO item (name, price) VALUES ('Fish and Chips', 279);
INSERT INTO item (name, price) VALUES ('Chocolate Cake', 179);
INSERT INTO item (name, price) VALUES ('Greek Salad', 209);
INSERT INTO item (name, price) VALUES ('Steak Frites', 329);
INSERT INTO item (name, price) VALUES ('Chicken Wings', 159);
INSERT INTO item (name, price) VALUES ('Vegetable Biryani', 259);
INSERT INTO item (name, price) VALUES ('Pasta Primavera', 239);
INSERT INTO item (name, price) VALUES ('Mango Lassi', 79);
INSERT INTO item (name, price) VALUES ('Tiramisu', 199);
INSERT INTO item (name, price) VALUES ('Pho Noodle Soup', 219);
INSERT INTO item (name, price) VALUES ('Pulled Pork Sandwich', 289);
INSERT INTO item (name, price) VALUES ('Mushroom Risotto', 249);
INSERT INTO item (name, price) VALUES ('Falafel Wrap', 149);
INSERT INTO item (name, price) VALUES ('Beef Stroganoff', 299);
INSERT INTO item (name, price) VALUES ('Tom Yum Soup', 189);
INSERT INTO item (name, price) VALUES ('Cobb Salad', 219);
INSERT INTO item (name, price) VALUES ('Chicken Caesar Wrap', 169);
INSERT INTO item (name, price) VALUES ('Beef Tacos', 179);
INSERT INTO item (name, price) VALUES ('Fruit Salad', 129);
INSERT INTO item (name, price) VALUES ('Shrimp Scampi', 269);
INSERT INTO item (name, price) VALUES ('Caprese Salad', 189);
INSERT INTO item (name, price) VALUES ('Paneer Butter Masala', 279);
INSERT INTO item (name, price) VALUES ('Seafood Paella', 349);
INSERT INTO item (name, price) VALUES ('Spring Rolls', 139);
INSERT INTO item (name, price) VALUES ('Cannoli', 159);
INSERT INTO item (name, price) VALUES ('Eggplant Parmesan', 259);
INSERT INTO item (name, price) VALUES ('Vegetarian Nachos', 189);
INSERT INTO item (name, price) VALUES ('Roast Beef Sandwich', 199);
INSERT INTO item (name, price) VALUES ('Lamb Gyro', 219);
INSERT INTO item (name, price) VALUES ('Ratatouille', 229);
INSERT INTO item (name, price) VALUES ('Ceviche', 289);
INSERT INTO item (name, price) VALUES ('Chicken Fried Rice', 169);
INSERT INTO item (name, price) VALUES ('Key Lime Pie', 179);
INSERT INTO item (name, price) VALUES ('Beef Burrito', 229);
INSERT INTO item (name, price) VALUES ('Vegetable Curry', 209);
INSERT INTO item (name, price) VALUES ('Clam Chowder', 249);
INSERT INTO item (name, price) VALUES ('Teriyaki Salmon', 319);
INSERT INTO item (name, price) VALUES ('Bangers and Mash', 229);
INSERT INTO item (name, price) VALUES ('Cheese Platter', 189);
INSERT INTO item (name, price) VALUES ('Pesto Pasta', 239);
INSERT INTO item (name, price) VALUES ('Spinach Quiche', 179);
INSERT INTO item (name, price) VALUES ('Chocolate Brownie', 149);
INSERT INTO item (name, price) VALUES ('Beef Wellington', 389);
INSERT INTO item (name, price) VALUES ('Avocado Toast', 129);
INSERT INTO item (name, price) VALUES ('Gourmet Burger', 279);
INSERT INTO item (name, price) VALUES ('Miso Soup', 99);
INSERT INTO item (name, price) VALUES ('Stuffed Bell Peppers', 219);
INSERT INTO item (name, price) VALUES ('Lobster Roll', 349);
INSERT INTO item (name, price) VALUES ('Quinoa Salad', 199);
INSERT INTO item (name, price) VALUES ('Chicken Shawarma', 189);
INSERT INTO item (name, price) VALUES ('Tandoori Chicken', 279);
INSERT INTO item (name, price) VALUES ('Hawaiian Pizza', 259);
INSERT INTO item (name, price) VALUES ('Tomato Soup', 129);
INSERT INTO item (name, price) VALUES ('Beef Kebabs', 239);
INSERT INTO item (name, price) VALUES ('Shakshuka', 209);
INSERT INTO item (name, price) VALUES ('Pork Dumplings', 159);
INSERT INTO item (name, price) VALUES ('Garlic Bread', 99);
INSERT INTO item (name, price) VALUES ('Pumpkin Soup', 149);
INSERT INTO item (name, price) VALUES ('Egg Fried Rice', 129);
INSERT INTO item (name, price) VALUES ('Banana Bread', 109);
INSERT INTO item (name, price) VALUES ('Stuffed Mushrooms', 179);
INSERT INTO item (name, price) VALUES ('Crab Cakes', 299);
INSERT INTO item (name, price) VALUES ('Sweet Potato Fries', 109);
INSERT INTO item (name, price) VALUES ('Tofu Stir Fry', 169);
INSERT INTO item (name, price) VALUES ('Blueberry Pancakes', 149);
INSERT INTO item (name, price) VALUES ('Buffalo Wings', 179);
INSERT INTO item (name, price) VALUES ('Margarita Cocktail', 89);
INSERT INTO item (name, price) VALUES ('Chocolate Fondue', 199);
INSERT INTO item (name, price) VALUES ('Steamed Mussels', 249);
INSERT INTO item (name, price) VALUES ('Cinnamon Rolls', 139);
INSERT INTO item (name, price) VALUES ('Pulled Chicken Sandwich', 219);
INSERT INTO item (name, price) VALUES ('Fajitas', 189);
INSERT INTO item (name, price) VALUES ('Corn Chowder', 169);
INSERT INTO item (name, price) VALUES ('Caramel Popcorn', 79);
INSERT INTO item (name, price) VALUES ('Pancetta Pasta', 209);
INSERT INTO item (name, price) VALUES ('Beef Empanadas', 179);
INSERT INTO item (name, price) VALUES ('Gazpacho', 159);
INSERT INTO item (name, price) VALUES ('Falafel Bowl', 149);
INSERT INTO item (name, price) VALUES ('Risotto Balls', 169);