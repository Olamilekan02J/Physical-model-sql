CREATE DATABASE CheckpointDB;

CREATE TABLE CUSTOMER_TABLE(
    CustomerID VARCHAR (50) NOT NULL PRIMARY KEY,
    CustomerName VARCHAR (50) NOT NULL,
    Email VARCHAR(80) NOT NULL,
    Address_ VARCHAR (80) NOT NULL
);

CREATE TABLE PRODUCT_TABLE(
    ProductID VARCHAR(50) NOT NULL PRIMARY KEY,
    ProductName VARCHAR (50) NOT NULL,
    Price  DECIMAL CHECK ( Price > 0)
);

CREATE TABLE ORDER_TABLE(
    Order_ID INT NOT NULL PRIMARY KEY,
    Order_date DATE NOT NULL,
    CustomerID VARCHAR (50) FOREIGN KEY REFERENCES CUSTOMER_TABLE(CustomerID),
    ProductID VARCHAR (50) FOREIGN KEY REFERENCES PRODUCT_TABLE(ProductID)
);


SELECT * FROM CUSTOMER_TABLE
SELECT * FROM PRODUCT_TABLE
SELECT * FROM ORDER_TABLE


INSERT INTO CUSTOMER_TABLE VALUES
('001', 'Ehiz', 'ehiz12@gmail.com','Iyanapaja'),
('002', 'Olamilekan', 'olamilkan@gmail.com', 'Iyanapaja'),
('003', 'Diana', 'dolly@gmail.com', 'Ikorodu'),
('004', 'Soyemi', 'soyemi@gmail.com', 'Mushin'),
('005', 'Tito', 'tito@gmail.com', 'Mushin')

INSERT INTO PRODUCT_TABLE VALUES
('001', 'Cornflakes', 1999.99),
('002', 'Indomie', 4199.98),
('003', 'Peak Milk', 4999.99),
('004', 'Dano Fullcream',5200.00),
('005', 'Milo',2300.99)

INSERT INTO ORDER_TABLE VALUES
(01, '2023-08-23','001','002'),
(02, '2023-09-23','003','001'),
(03, '2023-11-22','002','004'),
(04, '2023-07-15','005','003'),
(05, '2023-06-05','004','005')




