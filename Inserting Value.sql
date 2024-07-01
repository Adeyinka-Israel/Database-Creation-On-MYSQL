    -- INSERTING VALUES INTO OUR ALREADY CREATED TABLES WITHIN OUR DATABASE --
    use empires_club;
    
    

    -- Inserting sample data into customer table
INSERT INTO customer(first_name,last_name,gender,email,locationID) 
VALUES("Ademola","Adekangbe","male","customer1@gmail.com",1),
("John","Allen","male","customer2@gmail.com",2),
("Ayo","Ade","female","customer3@gmail.com",3),
("Mary","Flower","female","customer4@gmail.com",4),
("Sayo","Gbade","male","customer5@gmail.com",5),
("Tola","fiyin","female","customer6@gmail.com",6);

INSERT INTO location(city,state,postal_code)
VALUES ("Ikeja","Lagos",10001),
("ibadan","Oyo",10002),
("ilorin","Kwara",10003),
("Island","Lagos",10004),
("Festac","Lagos",10005),
("Oyo","Oyo",10007);

INSERT INTO product(product_name,description,price,stock_quantity)
VALUES ("Bag","New arrival",'300.00',10),
("Watch","New arrival",'250.50',21),
("Chair","Fairly used",'100.20',5),
("Laptop","UK Used",'1450.40',15),
("Camera","UK Used",'700.40',20),
("TV","US Used",'1000.40',10),
("Phones","UK Used",'1500.40',15);

INSERT INTO orders(order_date,quantity,productID,CustomerID)
VALUES ('2024-02-09',5,4,7),
('2024-02-10',9,7,7),
('2024-02-13',4,3,8),
('2024-02-14',3,3,8),
('2024-02-15',5,1,9),
('2024-02-16',15,5,9),
('2024-02-17',10,6,10),
('2024-02-18',2,8,11),
('2024-02-21',6,12,10),
('2024-02-22',12,12,12);

SELECT *
FROM orders;

