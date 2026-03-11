create database Ecommerce_platform

use Ecommerce_platform

create table customers (customer_id int primary key, full_name varchar(100) not null, email varchar(100) unique not null, phone varchar(15) unique, city varchar(100) not null, state varchar(100) not null, registration_date date default current_date, gender char(1) check(gender in('M','F','O')))
insert into customers (customer_id, full_name, email, phone, city, state, registration_date, gender) values
(1,  'Aarav Sharma',      'aarav.sharma@gmail.com',     '9876543210', 'Mumbai',      'Maharashtra',  '2021-03-15', 'M'),
(2,  'Priya Mehta',       'priya.mehta@yahoo.com',      '9823456781', 'Delhi',       'Delhi',        '2021-06-20', 'F'),
(3,  'Rahul Verma',       'rahul.verma@gmail.com',      '9712345682', 'Bangalore',   'Karnataka',    '2021-09-10', 'M'),
(4,  'Sneha Patel',       'sneha.patel@gmail.com',      '9634567893', 'Ahmedabad',   'Gujarat',      '2021-12-05', 'F'),
(5,  'Vikram Singh',      'vikram.singh@outlook.com',   '9545678904', 'Chennai',     'Tamil Nadu',   '2022-01-18', 'M'),
(6,  'Ananya Iyer',       'ananya.iyer@gmail.com',      '9456789015', 'Hyderabad',   'Telangana',    '2022-03-22', 'F'),
(7,  'Karan Kapoor',      'karan.kapoor@gmail.com',     '9367890126', 'Pune',        'Maharashtra',  '2022-05-14', 'M'),
(8,  'Divya Nair',        'divya.nair@gmail.com',       '9278901237', 'Kochi',       'Kerala',       '2022-07-08', 'F'),
(9,  'Rohan Desai',       'rohan.desai@gmail.com',      '9189012348', 'Mumbai',      'Maharashtra',  '2022-09-03', 'M'),
(10, 'Meera Krishnan',    'meera.k@gmail.com',          '9090123459', 'Bangalore',   'Karnataka',    '2022-11-25', 'F'),
(11, 'Arjun Reddy',       'arjun.reddy@gmail.com',      '9901234560', 'Hyderabad',   'Telangana',    '2023-01-08', 'M'),
(12, 'Nisha Agarwal',     'nisha.agarwal@gmail.com',    '9812345671', 'Jaipur',      'Rajasthan',    '2023-02-14', 'F'),
(13, 'Siddharth Joshi',   'siddharth.j@gmail.com',      '9723456782', 'Pune',        'Maharashtra',  '2023-03-20', 'M'),
(14, 'Lakshmi Rao',       'lakshmi.rao@gmail.com',      '9634567892', 'Chennai',     'Tamil Nadu',   '2023-05-11', 'F'),
(15, 'Amit Trivedi',      'amit.trivedi@gmail.com',     '9545678905', 'Delhi',       'Delhi',        '2023-06-18', 'M'),
(16, 'Pooja Gupta',       'pooja.gupta@yahoo.com',      '9456789016', 'Lucknow',     'Uttar Pradesh','2023-07-25', 'F'),
(17, 'Manish Tiwari',     'manish.t@gmail.com',         '9367890127', 'Kolkata',     'West Bengal',  '2023-08-30', 'M'),
(18, 'Riya Malhotra',     'riya.malhotra@gmail.com',    '9278901238', 'Chandigarh',  'Punjab',       '2023-09-15', 'F'),
(19, 'Suresh Babu',       'suresh.babu@gmail.com',      '9189012349', 'Bangalore',   'Karnataka',    '2023-10-22', 'M'),
(20, 'Kavitha Menon',     'kavitha.menon@gmail.com',    '9090123460', 'Kochi',       'Kerala',       '2023-11-28', 'F'),
(21, 'Deepak Kumar',      'deepak.kumar@gmail.com',     '9901234570', 'Patna',       'Bihar',        '2023-12-10', 'M'),
(22, 'Swati Jain',        'swati.jain@yahoo.com',       '9812345681', 'Indore',      'Madhya Pradesh','2024-01-05', 'F'),
(23, 'Rajesh Pillai',     'rajesh.pillai@gmail.com',    '9723456792', 'Mumbai',      'Maharashtra',  '2024-01-18', 'M'),
(24, 'Neha Kulkarni',     'neha.kulkarni@gmail.com',    '9634567803', 'Pune',        'Maharashtra',  '2024-02-08', 'F'),
(25, 'Aditya Saxena',     'aditya.saxena@outlook.com',  '9545678914', 'Delhi',       'Delhi',        '2024-02-22', 'M'),
(26, 'Shruti Yadav',      'shruti.yadav@gmail.com',     '9456789025', 'Noida',       'Uttar Pradesh','2024-03-10', 'F'),
(27, 'Varun Malhotra',    'varun.malhotra@gmail.com',   '9367890136', 'Gurgaon',     'Haryana',      '2024-03-20', 'M'),
(28, 'Anjali Chopra',     'anjali.chopra@yahoo.com',    '9278901247', 'Ludhiana',    'Punjab',       '2024-04-05', 'F'),
(29, 'NoOrderCustomer',   'noorder@gmail.com',          '9189012358', 'Surat',       'Gujarat',      '2019-05-10', 'M'),
(30, 'InactiveCustomer',  'inactive@gmail.com',         '9090123469', 'Vadodara',    'Gujarat',      '2019-08-15', 'F')

create table categories (category_id int primary key, category_name varchar(100) unique not null, parent_category_id int foreign key references categories(category_id), description text default null)
insert into categories (category_id, category_name, parent_category_id, description) values
(1,  'Electronics',         NULL, 'Electronic gadgets and devices'),
(2,  'Fashion',             NULL, 'Clothing and accessories'),
(3,  'Home & Kitchen',      NULL, 'Home appliances and kitchen tools'),
(4,  'Books',               NULL, 'Educational and recreational books'),
(5,  'Sports & Fitness',    NULL, 'Sports equipment and fitness gear'),
(6,  'Mobile Phones',       1,    'Smartphones and accessories'),
(7,  'Laptops',             1,    'Laptops and computers'),
(8,  'Cameras',             1,    'Digital cameras and photography'),
(9,  'Men Clothing',        2,    'Shirts, trousers, and menswear'),
(10, 'Women Clothing',      2,    'Kurtas, sarees, and womenswear'),
(11, 'Footwear',            2,    'Shoes and sandals'),
(12, 'Kitchen Appliances',  3,    'Mixers, cookers, and appliances'),
(13, 'Furniture',           3,    'Tables, chairs, sofas'),
(14, 'Fiction Books',       4,    'Novels and story books'),
(15, 'Gym Equipment',       5,    'Dumbbells, treadmills, yoga mats')

create table products (product_id int primary key, product_name varchar(200) not null, category_id int foreign key references categories(category_id), price decimal(10,2) not null check(price>0),stock_quantity int not null default 0, brand varchar(100) not null,rating decimal(2,1) check (rating between 0.0 and 5.0))
insert into products (product_id, product_name, category_id, price, stock_quantity, brand, rating) values
(1,  'Samsung Galaxy S23',           6,  74999.00,  50, 'Samsung',     4.5),
(2,  'Apple iPhone 15',              6, 109999.00,  30, 'Apple',       4.8),
(3,  'OnePlus 12R',                  6,  39999.00,  80, 'OnePlus',     4.3),
(4,  'Redmi Note 13 Pro',            6,  24999.00, 120, 'Xiaomi',      4.2),
(5,  'Dell Inspiron 15',             7,  65000.00,  25, 'Dell',        4.2),
(6,  'HP Pavilion x360',             7,  72000.00,  20, 'HP',          4.1),
(7,  'Lenovo IdeaPad Slim 5',        7,  58000.00,  35, 'Lenovo',      4.4),
(8,  'Canon EOS 1500D',              8,  45000.00,  15, 'Canon',       4.6),
(9,  'Nikon D3500',                  8,  42000.00,  12, 'Nikon',       4.5),
(10, 'Raymond Formal Shirt',         9,   1499.00, 200, 'Raymond',     4.0),
(11, 'Levi\s 511 Slim Jeans',       9,   2999.00, 150, 'Levi\s',     4.3),
(12, 'Fabindia Cotton Kurta',       10,   1299.00, 180, 'Fabindia',    4.2),
(13, 'W Women Anarkali Kurta',      10,   1799.00, 120, 'W',           4.1),
(14, 'Nike Running Shoes',          11,   5999.00,  90, 'Nike',        4.7),
(15, 'Adidas Ultraboost',           11,   8999.00,  60, 'Adidas',      4.6),
(16, 'Prestige Mixer Grinder',      12,   4500.00,  60, 'Prestige',    4.3),
(17, 'Instant Pot Duo 7-in-1',      12,   9999.00,  40, 'Instant Pot', 4.6),
(18, 'Study Table Wooden',          13,   8500.00,  30, 'DuPure',      4.0),
(19, 'Office Chair Ergonomic',      13,  12000.00,  25, 'Featherlite', 4.4),
(20, 'Physics NCERT Class 12',      14,    350.00, 500, 'NCERT',       4.7),
(21, 'Data Structures by Cormen',   14,    799.00, 300, 'MIT Press',   4.8),
(22, 'Harry Potter Collection',     14,   2499.00, 150, 'Bloomsbury',  4.9),
(23, 'Dumbbell Set 20kg',           15,   3500.00,  75, 'Kore',        4.2),
(24, 'Yoga Mat Anti-Slip',          15,    899.00, 200, 'Boldfit',     4.4),
(25, 'Treadmill Motorized',         15,  45000.00,  10, 'Powermax',    4.5),
(26, 'Boat Airdopes 141',            6,   1499.00, 300, 'Boat',        4.1),
(27, 'JBL Bluetooth Speaker',        1,   5999.00,  85, 'JBL',         4.6),
(28, 'Sony Headphones WH-1000XM5',   1,  29999.00,  40, 'Sony',        4.8),
(29, 'Puma Sports T-Shirt',          9,    999.00, 250, 'Puma',        4.0),
(30, 'Reebok Track Pants',           9,   1499.00, 180, 'Reebok',      4.1),
(31, 'Fastrack Analog Watch',        2,   1999.00, 100, 'Fastrack',    4.2),
(32, 'Titan Smart Watch',            2,  12999.00,  50, 'Titan',       4.5),
(33, 'Philips Air Fryer',           12,   8999.00,  45, 'Philips',     4.7),
(34, 'LG Microwave Oven',           12,  11000.00,  30, 'LG',          4.4),
(35, 'Sofa Set 3 Seater',           13,  35000.00,  15, 'Urban Ladder',4.3),
(36, 'Dining Table 6 Seater',       13,  28000.00,  20, 'Pepperfry',   4.2),
(37, 'The Alchemist Novel',         14,    399.00, 400, 'HarperCollins',4.8),
(38, 'Rich Dad Poor Dad',           14,    499.00, 350, 'Penguin',     4.7),
(39, 'Resistance Bands Set',        15,    799.00, 150, 'Amazon Basics',4.3),
(40, 'OutOfStock Product',           5,   1999.00,   0, 'Unavailable', 0.0)

create table orders (order_id int primary key, customer_id int foreign key references customers(customer_id), order_date datetime default current_timestamp, delivery_date date default null, order_status varchar(20) check(order_status in('pending','shipped','delivered','cancelled')),shipping_adress varchar(255) not null)
insert into orders (order_id, customer_id, order_date, delivery_date, order_status, shipping_adress) values
(1,  1,  '2024-01-05 10:30:00', '2024-01-08', 'Delivered',  'Flat 201, Andheri West, Mumbai - 400053'),
(2,  2,  '2024-01-10 14:15:00', '2024-01-13', 'Delivered',  'A-12, Karol Bagh, Delhi - 110005'),
(3,  3,  '2024-01-15 09:00:00', '2024-01-18', 'Delivered',  '45, Koramangala, Bangalore - 560034'),
(4,  4,  '2024-01-20 16:45:00', '2024-01-24', 'Delivered',  'B-7, Navrangpura, Ahmedabad - 380009'),
(5,  5,  '2024-02-01 11:00:00', '2024-02-04', 'Delivered',  '32, T Nagar, Chennai - 600017'),
(6,  6,  '2024-02-05 13:30:00', '2024-02-09', 'Shipped',    '10, Banjara Hills, Hyderabad - 500034'),
(7,  7,  '2024-02-10 08:45:00', '2024-02-14', 'Delivered',  '22, Kothrud, Pune - 411038'),
(8,  8,  '2024-02-15 17:00:00', NULL,          'Cancelled',  '5, MG Road, Kochi - 682016'),
(9,  9,  '2024-02-18 10:15:00', '2024-02-22', 'Delivered',  'Flat 8, Dadar, Mumbai - 400014'),
(10, 10, '2024-02-22 12:30:00', '2024-02-26', 'Delivered',  '88, Indiranagar, Bangalore - 560038'),
(11, 1,  '2024-03-01 09:30:00', '2024-03-05', 'Delivered',  'Flat 201, Andheri West, Mumbai - 400053'),
(12, 2,  '2024-03-05 15:00:00', NULL,          'Pending',    'A-12, Karol Bagh, Delhi - 110005'),
(13, 11, '2024-03-08 11:00:00', '2024-03-12', 'Delivered',  '14, Jubilee Hills, Hyderabad - 500033'),
(14, 12, '2024-03-10 14:45:00', '2024-03-14', 'Delivered',  'C-9, Vaishali Nagar, Jaipur - 302021'),
(15, 3,  '2024-03-12 10:00:00', NULL,          'Shipped',    '45, Koramangala, Bangalore - 560034'),
(16, 13, '2024-03-15 16:30:00', '2024-03-19', 'Delivered',  '18, Shivajinagar, Pune - 411005'),
(17, 5,  '2024-03-18 09:00:00', NULL,          'Pending',    '32, T Nagar, Chennai - 600017'),
(18, 14, '2024-03-20 13:00:00', '2024-03-24', 'Delivered',  '7, Anna Nagar, Chennai - 600040'),
(19, 15, '2024-03-22 10:30:00', NULL,          'Cancelled',  'D-5, Lajpat Nagar, Delhi - 110024'),
(20, 19, '2024-03-25 14:00:00', '2024-03-29', 'Delivered',  '33, Whitefield, Bangalore - 560066'),
(21, 1,  '2024-04-01 11:00:00', '2024-04-05', 'Delivered',  'Flat 201, Andheri West, Mumbai - 400053'),
(22, 16, '2024-04-03 10:00:00', '2024-04-07', 'Delivered',  '45, Gomti Nagar, Lucknow - 226010'),
(23, 17, '2024-04-05 14:30:00', '2024-04-09', 'Delivered',  '12, Salt Lake, Kolkata - 700091'),
(24, 18, '2024-04-08 09:30:00', NULL,          'Shipped',    '8, Sector 17, Chandigarh - 160017'),
(25, 20, '2024-04-10 16:00:00', '2024-04-14', 'Delivered',  '22, Marine Drive, Kochi - 682031'),
(26, 4,  '2024-04-12 11:30:00', '2024-04-16', 'Delivered',  'B-7, Navrangpura, Ahmedabad - 380009'),
(27, 21, '2024-04-15 10:00:00', '2024-04-19', 'Delivered',  '5, Gandhi Maidan, Patna - 800001'),
(28, 22, '2024-04-18 13:00:00', NULL,          'Pending',    '18, Vijay Nagar, Indore - 452010'),
(29, 23, '2024-04-20 15:30:00', '2024-04-24', 'Delivered',  '88, Bandra West, Mumbai - 400050'),
(30, 24, '2024-04-22 09:00:00', '2024-04-26', 'Delivered',  '10, Pimpri, Pune - 411018'),
(31, 6,  '2024-04-25 12:00:00', '2024-04-29', 'Delivered',  '10, Banjara Hills, Hyderabad - 500034'),
(32, 25, '2023-05-10 10:00:00', '2023-05-14', 'Cancelled',  'G-12, Connaught Place, Delhi - 110001'),
(33, 11, '2024-04-28 14:00:00', NULL,          'Shipped',    '14, Jubilee Hills, Hyderabad - 500033'),
(34, 26, '2024-05-01 11:00:00', '2024-05-05', 'Delivered',  '22, Sector 62, Noida - 201301'),
(35, 27, '2024-05-03 10:30:00', NULL,          'Pending',    '15, DLF Phase 2, Gurgaon - 122002')

create table order_items (item_id int primary key, order_id int foreign key references orders(order_id), product_id int foreign key references products(product_id), quantity int not null check(quantity>0),unit_price decimal(10,2) not null, discount decimal(4,2) default 0.00)
insert into order_items (item_id, order_id, product_id, quantity, unit_price, discount) values
(1,  1,  2,  1, 109999.00, 5.00),
(2,  1,  26, 2,   1499.00, 0.00),
(3,  1,  14, 1,   5999.00, 0.00),
(4,  2,  10, 3,   1499.00, 10.00),
(5,  2,  11, 2,   2999.00, 5.00),
(6,  3,  5,  1,  65000.00, 8.00),
(7,  3,  21, 2,    799.00, 0.00),
(8,  4,  12, 3,   1299.00, 5.00),
(9,  4,  13, 2,   1799.00, 0.00),
(10, 5,  1,  1,  74999.00, 3.00),
(11, 5,  24, 1,    899.00, 0.00),
(12, 6,  17, 1,   9999.00, 10.00),
(13, 6,  16, 1,   4500.00, 5.00),
(14, 7,  20, 5,    350.00, 0.00),
(15, 7,  37, 3,    399.00, 0.00),
(16, 8,  3,  1,  39999.00, 0.00),
(17, 9,  7,  1,  58000.00, 7.00),
(18, 9,  23, 1,   3500.00, 0.00),
(19, 10, 6,  1,  72000.00, 5.00),
(20, 11, 14, 2,   5999.00, 0.00),
(21, 11, 24, 1,    899.00, 10.00),
(22, 12, 2,  1, 109999.00, 5.00),
(23, 13, 1,  1,  74999.00, 0.00),
(24, 13, 26, 1,   1499.00, 5.00),
(25, 14, 10, 4,   1499.00, 10.00),
(26, 15, 5,  1,  65000.00, 0.00),
(27, 16, 21, 2,    799.00, 0.00),
(28, 16, 38, 1,    499.00, 0.00),
(29, 17, 16, 1,   4500.00, 5.00),
(30, 18, 12, 2,   1299.00, 0.00),
(31, 20, 7,  1,  58000.00, 8.00),
(32, 21, 28, 1,  29999.00, 5.00),
(33, 21, 27, 1,   5999.00, 0.00),
(34, 22, 4,  2,  24999.00, 10.00),
(35, 22, 30, 1,   1499.00, 0.00),
(36, 23, 8,  1,  45000.00, 5.00),
(37, 23, 9,  1,  42000.00, 5.00),
(38, 24, 15, 1,   8999.00, 0.00),
(39, 25, 33, 1,   8999.00, 10.00),
(40, 26, 3,  1,  39999.00, 5.00),
(41, 27, 22, 1,   2499.00, 0.00),
(42, 28, 31, 2,   1999.00, 0.00),
(43, 29, 32, 1,  12999.00, 8.00),
(44, 30, 19, 1,  12000.00, 5.00),
(45, 31, 34, 1,  11000.00, 0.00),
(46, 33, 25, 1,  45000.00, 10.00),
(47, 34, 35, 1,  35000.00, 5.00),
(48, 35, 36, 1,  28000.00, 0.00),
(49, 1,  29, 2,    999.00, 0.00),
(50, 3,  10, 1,   1499.00, 0.00),
(51, 5,  11, 1,   2999.00, 5.00),
(52, 9,  15, 1,   8999.00, 10.00),
(53, 10, 27, 1,   5999.00, 0.00),
(54, 13, 14, 1,   5999.00, 0.00),
(55, 16, 39, 2,    799.00, 0.00),
(56, 18, 24, 2,    899.00, 0.00),
(57, 20, 23, 1,   3500.00, 0.00),
(58, 21, 26, 3,   1499.00, 10.00),
(59, 22, 29, 3,    999.00, 0.00),
(60, 23, 20, 10,   350.00, 0.00),
(61, 25, 16, 1,   4500.00, 5.00),
(62, 26, 13, 1,   1799.00, 0.00),
(63, 27, 37, 2,    399.00, 0.00),
(64, 29, 6,  1,  72000.00, 12.00),
(65, 30, 18, 1,   8500.00, 0.00),
(66, 31, 17, 1,   9999.00, 8.00),
(67, 34, 19, 1,  12000.00, 10.00),
(68, 11, 15, 1,   8999.00, 5.00),
(69, 13, 23, 1,   3500.00, 0.00),
(70, 20, 33, 1,   8999.00, 5.00)

create table payments (payment_id int primary key, order_id int unique foreign key references orders(order_id), payment_date datetime not null, amount decimal(10,2) not null, payment_method varchar(30) check(payment_method in ('UPI','card','banking','COD','wallet')),payment_status varchar(20) check (payment_status in('success','failed','refunded','pending')))

alter table payments
drop constraint CK__payments__paymen__7D439ABD

alter table payments
add constraint ck_payment_method check(payment_method in ('UPI','card','Netbanking','COD','wallet'))

insert into payments (payment_id, order_id, payment_date, amount, payment_method, payment_status) values
(1,  1,  '2024-01-05 10:35:00', 120495.10, 'Card',       'Success'),
(2,  2,  '2024-01-10 14:18:00',   9343.65, 'UPI',        'Success'),
(3,  3,  '2024-01-15 09:05:00',  62268.00, 'NetBanking', 'Success'),
(4,  4,  '2024-01-20 16:50:00',   7295.05, 'UPI',        'Success'),
(5,  5,  '2024-02-01 11:05:00',  78646.03, 'Card',       'Success'),
(6,  6,  '2024-02-05 13:35:00',  13724.50, 'Wallet',     'Success'),
(7,  7,  '2024-02-10 08:50:00',   2947.00, 'COD',        'Success'),
(8,  9,  '2024-02-18 10:20:00',  64809.00, 'Card',       'Success'),
(9,  10, '2024-02-22 12:35:00',  74399.00, 'UPI',        'Success'),
(10, 11, '2024-03-01 09:35:00',  20546.10, 'UPI',        'Success'),
(11, 12, '2024-03-05 15:05:00', 104499.05, 'Card',       'Pending'),
(12, 13, '2024-03-08 11:05:00',  80497.05, 'UPI',        'Success'),
(13, 14, '2024-03-10 14:50:00',   5396.40, 'COD',        'Success'),
(14, 15, '2024-03-12 10:05:00',  65000.00, 'NetBanking', 'Success'),
(15, 16, '2024-03-15 16:35:00',   2097.00, 'UPI',        'Success'),
(16, 17, '2024-03-18 09:05:00',   4275.00, 'Wallet',     'Pending'),
(17, 18, '2024-03-20 13:05:00',   4396.00, 'UPI',        'Success'),
(18, 20, '2024-03-25 14:05:00',  66384.00, 'Card',       'Success'),
(19, 21, '2024-04-01 11:05:00',  37557.30, 'Card',       'Success'),
(20, 22, '2024-04-03 10:05:00',  48496.10, 'UPI',        'Success'),
(21, 23, '2024-04-05 14:35:00',  86150.00, 'Card',       'Success'),
(22, 24, '2024-04-08 09:35:00',   8999.00, 'Wallet',     'Pending'),
(23, 25, '2024-04-10 16:05:00',  12374.05, 'UPI',        'Success'),
(24, 26, '2024-04-12 11:35:00',  39798.05, 'Card',       'Success'),
(25, 27, '2024-04-15 10:05:00',   2499.00, 'COD',        'Success'),
(26, 28, '2024-04-18 13:05:00',   3998.00, 'UPI',        'Pending'),
(27, 29, '2024-04-20 15:35:00',  75351.08, 'Card',       'Success'),
(28, 30, '2024-04-22 09:05:00',  19900.00, 'NetBanking', 'Success'),
(29, 31, '2024-04-25 12:05:00',  10119.08, 'UPI',        'Success'),
(30, 33, '2024-04-28 14:05:00',  40500.00, 'Card',       'Pending')


select * from customers
select * from categories
select * from products
select * from orders
select * from order_items
select * from payments

--PART A (DML)

--Q1. Insert 3 customers into the customers table with realistic data for all columns.
insert into customers 
(customer_id, full_name, email, phone, city, state, registration_date, gender) values
(31, 'Rahul Kumar',        'rahul.kumar@gmail.com',      '9876501111', 'Noida',      'Uttar Pradesh', '2024-05-10', 'M'),
(32, 'Neha Sharma',        'neha.sharma@yahoo.com',      '9823402222', 'Jaipur',     'Rajasthan',     '2024-05-12', 'F'),
(33, 'Aditya Mehra',       'aditya.mehra@outlook.com',   '9712303333', 'Bhopal',     'Madhya Pradesh','2024-05-15', 'M')

--Q2. Insert 2 categories: 'Electronics' and 'Fashion' with NULL parent_category_id.
insert into categories (category_id, category_name, parent_category_id, description) values
(16, 'Electronics & Gadgets', NULL, 'All types of electronic devices'),
(17, 'Fashion & Apparel', NULL, 'Clothing and fashion accessories')

--Q3. Insert 5 products with different categories, brands, prices, and stock quantities.
insert into products(product_id, product_name, category_id, price, stock_quantity, brand, rating) values
(41, 'Realme Narzo 70 Pro',        6, 19999.00,  75, 'Realme',      4.2),
(42, 'Asus Vivobook 16',           7, 68000.00,  18, 'Asus',        4.4),
(43, 'Zara Casual Jacket',         9, 3499.00,  120, 'Zara',        4.1),
(44, 'Cosco Football Size 5',      5,  999.00,  200, 'Cosco',       4.3),
(45, 'Philips Steam Iron',        12, 2499.00,   90, 'Philips',     4.5)

--Q4. Insert 3 orders for different customers with order_status as 'Pending', 'Shipped', and 'Delivered'.
insert into orders (order_id, customer_id, order_date, delivery_date, order_status, shipping_adress) values
(36, 28, '2024-05-05 10:15:00', NULL, 'Pending','45, Civil Lines, Ludhiana - 141001'),
(37, 29, '2024-05-06 14:30:00', NULL, 'Shipped','12, Ring Road, Surat - 395003'),
(38, 30, '2024-05-07 09:45:00', '2024-05-10', 'Delivered','18, Alkapuri, Vadodara - 390007')

--Q5. Insert 4 order_items records for order_id = 1 with different products and quantities.
insert into order_items(item_id, order_id, product_id, quantity, unit_price, discount) values
(71, 1, 3, 1, 39999.00, 5.00),  
(72, 1, 16, 2, 4500.00, 0.00),
(73, 1, 21, 3, 799.00, 0.00),    
(74, 1, 24, 4, 899.00, 10.00)  

--Q6. Insert 2 payment records with payment_status 'Success' and payment_method 'UPI' and 'Card'.
insert into payments (payment_id, order_id, payment_date, amount, payment_method, payment_status) values
(31, 34, '2024-05-01 11:10:00', 33250.00, 'UPI',  'Success'),
(32, 35, '2024-05-03 10:40:00', 28000.00, 'Card', 'Success')

--Q7. Update the price of all products in category_id = 2 by increasing it by 15%.
update products
set price=price*0.15
where category_id=2

--Q8. Update the order_status to 'Delivered' for all orders where order_status is 'Shipped' and order_date is before '2024-01-01'.
update orders
set order_status='delivered'
where order_status='shipped' and order_date<'2024-01-01'

--Q9. Update the stock_quantity of product_id = 5 by reducing it by 10 units.
update products
set stock_quantity=stock_quantity-10
where product_id=5

--Q10. Update the email of customer_id = 3 to 'newemail@example.com'.
update customers
set email='newemail@example.com'
where customer_id=3

--Q11. Delete all orders where order_status = 'Cancelled' and order_date is before '2023-06-01'.
delete from orders
where order_status='cancelled' and order_date<'2023-06-01'

--Q12. Delete all order_items where quantity is less than 1.
delete from order_items
where quantity<1

--Q13. Delete all products where stock_quantity is 0 and category_id = 5.
delete from products
where stock_quantity=0 and category_id=5

--Q14. Delete all payments where payment_status = 'Failed'.
delete from payments
where payment_status='failed'

--Q15. Delete all customers who registered before '2020-01-01' and have made no orders.
delete from customers
where registration_date<'2020-01-01' and not exists 
(select * from customers c
join orders o
on c.customer_id=o.customer_id)


--PART B (TCL)

--Q16. Write a transaction that inserts a new order and commits it only if the customer_id exists in the customers table.
DELETE FROM customers
WHERE registration_date < '2020-01-01'
AND NOT EXISTS (
    SELECT 1 FROM orders o
    WHERE o.customer_id = customers.customer_id)

--Q17. Start a transaction, update the stock_quantity of product_id = 10 to 50, then rollback the transaction.
BEGIN TRANSACTION;

UPDATE products
SET stock_quantity = 50
WHERE product_id = 10;

-- Check updated value
SELECT product_id, stock_quantity
FROM products
WHERE product_id = 10;

ROLLBACK

--Q18. Create a savepoint named 'before_delete', delete all orders with order_status = 'Cancelled', then rollback to the savepoint.
BEGIN TRANSACTION;

SAVE TRANSACTION before_delete;

DELETE FROM orders
WHERE order_status = 'Cancelled';

-- Check how many rows deleted
SELECT * FROM orders
WHERE order_status = 'Cancelled';

ROLLBACK TRANSACTION before_delete;

-- Verify that cancelled orders are restored
SELECT * FROM orders
WHERE order_status = 'Cancelled';

COMMIT;

--Q19. Write a transaction that transfers 500 coins from one customer to another (simulate wallet transfer). Use COMMIT if successful.
BEGIN TRY
    BEGIN TRANSACTION;

    UPDATE customers
    SET coins = coins - 500
    WHERE customer_id = 1 AND coins >= 500;

    IF @@ROWCOUNT = 0
        THROW 50000, 'Insufficient Balance', 1;

    UPDATE customers
    SET coins = coins + 500
    WHERE customer_id = 2;

    COMMIT;
    PRINT 'Transfer Successful';
END TRY
BEGIN CATCH
    ROLLBACK;
    PRINT ERROR_MESSAGE();
END CATCH;

--Q20. Demonstrate the use of BEGIN, COMMIT, and ROLLBACK in a single transaction involving INSERT and UPDATE operations.
BEGIN TRANSACTION;

-- Insert new customer
INSERT INTO customers
(customer_id, full_name, email, phone, city, state, registration_date, gender)
VALUES
(34, 'Test Customer', 'test.customer@gmail.com', '9000000000',
 'Indore', 'Madhya Pradesh', '2024-05-10', 'M');

-- Update product stock
UPDATE products
SET stock_quantity = stock_quantity - 5
WHERE product_id = 10;

COMMIT;

--PART C (OPERATORS)
--Q21. Find all products where price is greater than 1000 and less than or equal to 5000.
select * from products
where price>1000 or price<=5000

--Q22. Retrieve all orders where order_status is NOT 'Cancelled'.
select * from orders
where order_status<>'cancelled'

--Q23. List all customers whose city is either 'Mumbai' OR 'Delhi'.
select * from customers
where city in ('mumbai','delhi')

--Q24. Find all products where stock_quantity is between 10 and 100 (inclusive).
select * from products
where stock_quantity between 10 and 100

--Q25. Display all customers whose email ends with '@gmail.com'.
select * from customers
where email like '%@gmail.com'

--Q26. Retrieve all products where brand starts with 'Sam'.
select * from products
where brand like 'sam%'

--Q27. Find all orders where delivery_date IS NULL.
select * from orders
where delivery_date is null

--Q28. List all payments where payment_method is IN ('UPI', 'Card', 'Wallet').
select * from payments
where payment_method in ('UPI','card','wallet')

--Q29. Display all products where rating IS NOT NULL and rating >= 4.0.
select * from products
where rating is not null and rating>=4.0

--Q30. Find all customers where full_name contains the word 'Kumar' anywhere in the name.
select * from customers
where full_name like '%kumar%'

--PART D (WHERE clause)

--Q31. Retrieve all customers from the state 'Maharashtra'.
select * from customers
where state='maharashtra'

--Q32. Find all products with a price greater than 2000.
select * from products
where price>2000

--Q33. List all orders placed on '2024-03-15'.
select * from orders
where order_date='2024-03-15'

--Q34. Display all order_items where discount is greater than 5.0.
select p.product_name from orders o
join order_items ot
on o.order_id=ot.order_id
join products p
on ot.product_id=p.product_id
where ot.discount>5.0

--Q35. Find all payments where amount is less than or equal to 500.
select * from payments
where amount<=500

--Q36. Retrieve all products where category_id = 3 and stock_quantity > 20.
select * from products
where category_id=3 and stock_quantity>20

--Q37. List all customers who registered after '2023-01-01'.
select * from customers
where registration_date>'2023-01-01'

--Q38. Find all orders where order_status = 'Delivered' and delivery_date is before '2024-02-01'.
select * from orders
where order_status='delivered' and delivery_date<'2024-02-01'

--Q39. Display all products where brand = 'Apple' and rating >= 4.5.
select * from products
where brand='apple' and rating>=4.5

--Q40. Retrieve all payments where payment_status = 'Success' and payment_method = 'UPI'.
select * from payments
where payment_status='success' and payment_method='UPI'

--PART E (ORDER BY)

--Q41. List all products ordered by price in descending order.
select * from products
order by price DESC

--Q42. Display all customers ordered by registration_date in ascending order.
select * from customers
order by registration_date 

--Q43. Retrieve all orders ordered by order_date in descending order (most recent first).
select * from orders
order by order_date DESC

--Q44. List all products ordered by rating in descending order, then by price in ascending order.
select * from products
order by rating DESC, price ASC

--Q45. Display the top 10 most expensive products. Use ORDER BY with LIMIT.
select top 10 * from products
order by price DESC


--PART F (Aggregation Functions)

--Q46. Find the total number of customers registered on the platform.
select count(customer_id) as total_customer from customers

--Q47. Calculate the total revenue generated from all payments with payment_status = 'Success'.
select sum(amount) as total_revenue from payments
where payment_status='success'

--Q48. Find the average price of all products.
select avg(price) as average_price from products

--Q49. Display the highest and lowest product prices.
select max(price) as maximum , min(price) as minimum from products

--Q50. Count the total number of orders with order_status = 'Delivered'.
select count(order_id) as total_order from orders 
where order_status='delivered'

--Q51. Calculate the total quantity of all products in stock (sum of stock_quantity).
select sum(stock_quantity) as total_quantity from products

--Q52. Find the average discount applied across all order_items.
select avg(discount) as average_discount from order_items

--Q53. Display the total amount paid through 'UPI' payment method.
select sum(amount) as total_amount from payments
where payment_method='UPI'

--Q54. Count the number of distinct cities from the customers table.
select count(distinct city) as total_city from customers

--Q55. Find the maximum quantity ordered in a single order_item.
select distinct order_id,max(quantity) as maximum_quantity from order_items
group by order_id


--PART G (GROUP BY)

--Q56. Count the total number of customers per city. Display city and customer_count.
select city,count(customer_id) as total_customer from customers
group by city

--Q57. Find the total number of orders placed by each customer. Display customer_id and order_count.
select c.customer_id,count(o.order_id) as total_order from customers c
join orders o
on c.customer_id=o.customer_id
group by c.customer_id

--Q58. Calculate the total revenue per payment_method. Display payment_method and total_revenue.
select payment_method,sum(amount) as total_revenue from payments
group by payment_method

--Q59. Count the number of products in each category. Display category_id and product_count.
select category_id,count(product_id) as total_product from products
group by category_id

--Q60. Find the total quantity sold per product. Display product_id and total_quantity_sold.
select product_id,count(quantity) as total_quantity from order_items
group by product_id

--Q61. Calculate the average price of products per brand. Display brand and avg_price.
select brand,avg(price) as average_price from products
group by brand

--Q62. Count the number of orders per order_status. Display order_status and order_count.
select order_status,count(order_id) as total_orders from orders
group by order_status

--Q63. Find the total amount paid per customer. Display customer_id and total_paid. Join orders and payments.
select o.customer_id,sum(p.amount) as total_amount from orders o
join payments p
on o.order_id=p.order_id
group by o.customer_id

--Q64. Display the number of order_items per order. Display order_id and item_count.
select order_id, count(item_id) as total_order from order_items

--Q65. Calculate the average rating per category. Display category_id and avg_rating. Join products and categories.
select c.category_name,avg(p.rating) as average_rating from categories c
join products p
on c.category_id=p.category_id
group by c.category_name

--PART H (HAVING clause)

--Q66. Find all customers who have placed more than 3 orders. Display customer_id and order_count.
select customer_id,count(order_id) as order_count from orders
group by customer_id
having count(order_id)>3

--Q67. List all products that have been ordered more than 10 times. Display product_id and order_count.
select product_id,count(order_id) as total_order from order_items
group by product_id
having count(order_id)>10

--Q68. Find all categories with more than 5 products. Display category_id and product_count.
select category_id,count(product_id) as total_product from products
group by category_id
having count(product_id)>5

--Q69. Display all brands where the average product price is greater than 5000. Display brand and avg_price.
select brand,avg(price) as avg_price from products
group by brand
having avg(price)>5000

--Q70. Find all cities with more than 2 customers. Display city and customer_count.
select city,count(customer_id) as total_customer from customers
group by city
having count(customer_id)>2

--PART I (JOINS)

--Q71. List all orders with customer full_name. Display order_id, full_name, order_date, and order_status.
select o.order_id,c.full_name,o.order_date,o.order_status from customers c
join orders o
on c.customer_id=o.customer_id

--Q72. Display all order_items with product_name and brand. Show item_id, product_name, brand, quantity, and unit_price.
select o.item_id,p.product_name,p.brand,p.stock_quantity,o.unit_price from products p
join order_items o
on p.product_id=o.product_id

--Q73. List all products with their category_name. Display product_name, category_name, price, and stock_quantity.
select p.product_name,c.category_name,p.price,p.stock_quantity from categories c
join products p
on c.category_id=p.category_id

--Q74. Show all payments with customer full_name and order_date. Join payments, orders, and customers.
select c.full_name,o.order_date,p.payment_id from payments p
join orders o
on p.order_id=o.order_id
join customers c
on o.customer_id=c.customer_id

--Q75. Display all orders along with the total amount paid. Join orders and payments. Show order_id, customer_id, order_status, and amount.
select o.order_id,o.customer_id,o.order_status,p.amount from orders o
join payments p
on o.order_id=p.order_id

--Q76. List all products that have been ordered at least once. Display product_name, brand, and total quantity ordered.
select p.product_name,p.brand, sum(o.quantity) as total_quantity from products p
join order_items o
on p.product_id=o.product_id

--Q77. Find all customers who have placed orders. Display full_name, email, and count of orders.
select c.full_name,c.email,count(o.order_id) as total_order from customers c
join orders o
on c.customer_id=o.customer_id

--Q78. Show complete order details: customer full_name, product_name, quantity, unit_price, and order_status. Join all relevant tables.
select c.full_name,p.product_name,ot.quantity,ot.unit_price,o.order_status from customers c
join orders o
on c.customer_id=o.customer_id
join order_items ot
on o.order_id=ot.order_id
join products p
on ot.product_id=p.product_id

--Q79. Display all categories along with the count of products in each category. Include categories with zero products.
select c.category_name,count(product_id) as total_product from categories c
full join products p
on c.category_id=p.category_id
group by c.category_name


--Q80. Find all customers who have NEVER placed any order. Use LEFT JOIN.
select * from customers c
left join orders o
on c.customer_id=o.customer_id
where o.customer_id is null

--Q81. List all products that have NEVER been ordered. Use LEFT JOIN between products and order_items.
select * from products p
left join order_items o
on p.product_id=o.product_id
where o.product_id is null

--Q82. Display all orders along with payment_status. Include orders that have no payment record (show NULL for payment_status).
select o.order_id,p.payment_status from orders o
full join payments p
on o.order_id=p.order_id

--Q83. Find all categories with their parent category name (for sub-categories). Use SELF JOIN on categories table.
select c1.category_name,c1.parent_category_id from categories c1
join categories c2
on c1.category_id=c2.category_id
where c1.parent_category_id<>c2.parent_category_id

--Q84. List all pairs of customers from the same city. Use SELF JOIN on customers. Display both customer names and city.
select c1.full_name,c1.city from customers c1
join customers c2
on c1.city=c2.city
where c1.customer_id<>c2.customer_id

--Q85. Find all pairs of products with the same brand. Use SELF JOIN on products. Display both product names and brand.
select p1.product_name,p1.brand from products p1
join products p2
on p1.brand=p2.brand
where p1.product_id<>p2.product_id

--Q86. Display all customers along with their total spending. Join customers, orders, and payments. Show full_name and total_spent.
select c.full_name, sum(p.amount) as total_spend from customers c
join orders o
on c.customer_id=o.customer_id
join payments p
on o.order_id=p.order_id
group by c.full_name

--Q87. List all products ordered in 'Mumbai'. Join products, order_items, orders, and customers. Filter by city = 'Mumbai'.
select p.product_name from customers c
join orders o
on c.customer_id=o.customer_id
join order_items ot
on o.order_id=ot.order_id
join products p
on ot.product_id=p.product_id
where c.city='mumbai'

--Q88. Show the top 5 best-selling products by total quantity sold. Join products and order_items.
select top 5 p.product_name, sum(o.quantity) as total_quantity from products p
join order_items o
on p.product_id=o.product_id
group by p.product_id

--Q89. Find the most expensive order (by total amount). Join orders, order_items, and products. Calculate total as sum(quantity * unit_price).
select o.order_id,sum(ot.quantity*ot.unit_price) as expensive_order from orders o
join order_items ot
on o.order_id=ot.order_id
join products p
on ot.product_id=p.product_id

--Q90. Display all orders where payment_method is 'UPI'. Join orders and payments.
select * from orders o
join payments p
on o.order_id=p.order_id
where p.payment_method='UPI'

--Q91. List all categories along with the total revenue generated from products in that category. Join categories, products, order_items.
select c.category_name,sum(ot.quantity*ot.unit_price) as total_revenue from categories c
join products p
on c.category_id=p.category_id
join order_items ot
on p.product_id=ot.product_id
group by c.category_name

--Q92. Find all customers who ordered products from the 'Electronics' category. Join customers, orders, order_items, products, categories.
select c.full_name,o.order_id,ct.category_name from customers c
join orders o
on c.customer_id=o.customer_id
join order_items ot
on o.order_id=ot.order_id
join products p
on ot.product_id=p.product_id
join categories ct
on p.category_id=ct.category_id
where ct.category_name='electronics'

--Q93. Display the average order value per customer. Join customers, orders, order_items. Calculate avg(quantity * unit_price).
select c.full_name, avg(ot.quantity*ot.unit_price) as average_value from customers c
join orders o
on c.customer_id=o.customer_id
join order_items ot
on o.order_id=ot.order_id
group by c.full_name

--Q94. Perform a CROSS JOIN between categories and payment_methods (use a derived table with UPI, Card, NetBanking, COD, Wallet).
select c.category_name,p.payment_method from categories c
cross join payments p

--Q95. Write a FULL OUTER JOIN between customers and orders to show all customers (with or without orders) and all orders.
select c.customer_id,o.order_id from customers c
full join orders o
on c.customer_id=o.customer_id

--PART J (Subqueries)

--Q96. Find all products whose price is greater than the average price of all products. Use a subquery.
select * from products
where price>
(select avg(price) from products)

--Q97. List all customers who have placed more orders than the average number of orders per customer. Use a subquery.
select customer_id from orders
where order_id>
(select count(order_id) from orders)

--Q98. Display all orders where the total order value (sum of quantity * unit_price) is greater than 10000. Use a subquery in WHERE clause.
select * from order_items
where order_id in
(select order_id from order_items
group by order_id
having sum(quantity*unit_price)>10000)

--Q99. Find the product with the highest price in each category. Use a correlated subquery.
select category_id,product_name,price from products
where price in 
(select price=max(price) 
from products
group by category_id)


--Q100. List all customers who have made at least one payment with amount greater than 5000. Use EXISTS with a subquery.
select c.full_name,count(p.payment_id) from customers c
join orders o
on c.customer_id=o.customer_id
join payments p
on o.order_id=p.order_id
where p.amount>5000
group by c.full_name
having count(p.payment_id)>=1

--PART K (INDEX)

--Q101. Create an index named 'idx_email' on the email column of the customers table.
create index IDX_email
on customers (email DESC)

select email from customers

--Q102. Create a composite index named 'idx_order_customer' on order_id and customer_id columns of the orders table.
create index IDX_order_customer
on orders (order_id ASC,customer_id ASC)

select order_id,customer_id from orders

drop index orders.IDX_order_customer

--Q103. Create an index named 'idx_product_name' on the product_name column of the products table.
create index IDX_product_name
on products (product_name ASC)

select product_name from products

drop index products.IDX_product_name

--Q104. Drop the index named 'idx_email' from the customers table.
drop index IDX_email on customers

--Q105. Show all indexes on the products table. Use SHOW INDEX command.
sp_helpindex products

--PART L (VIEWS)

--Q106. Create a view named 'customer_orders_view' that shows customer_id, full_name, order_id, order_date, and order_status.
create view customer_order_view
as
select c.full_name,c.customer_id,o.order_id,o.order_date,o.order_status from customers c
join orders o
on c.customer_id=o.customer_id

select * from customer_order_view

--Q107. Create a view named 'product_sales_view' that displays product_id, product_name, category_name, and total_quantity_sold.
create view product_sales_view
as
select p.product_id,p.product_name,c.category_name,sum(quantity) as total_quantity_sold from categories c
join products p
on c.category_id=p.category_id
join order_items o
on p.product_id=o.product_id
group by p.product_id,p.product_name,c.category_name

select * from product_sales_view

--Q108. Create a view named 'revenue_by_category' that shows category_name and total revenue generated from each category.
create view revenue_by_category
as
select c.category_name,sum(o.quantity*o.unit_price) as total_revenue from categories c
join products p
on c.category_id=p.category_id
join order_items o
on p.product_id=o.product_id
group by c.category_name

select * from revenue_by_category

--Q109. Query the 'customer_orders_view' to find all orders placed by customers from 'Delhi'.
create view customer_orders_view
as
select o.order_id,c.city from customers c
join orders o
on c.customer_id=o.customer_id
where c.city='delhi'

select * from customer_order_view

--Q110. Drop the view named 'product_sales_view'.
drop view product_sales_view